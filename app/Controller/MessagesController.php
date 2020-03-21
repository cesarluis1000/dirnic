<?php
App::uses('AppController', 'Controller');
/**
 * Messages Controller
 *
 * @property Message $Message
 * @property PaginatorComponent $Paginator
 */
class MessagesController extends AppController {

/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator');

/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->Message->recursive = 0;
		//Si se busca campo displayField del modelo
		$campo = !empty($this->Message->displayField)?$this->Message->displayField:'id';
		$this->set('campo',$campo);
		$conditions = array('order' => array('Message.fecha'=>'DESC'));
		$this->Paginator->settings = array_merge($this->Paginator->settings,$conditions);
		if (!empty($this->request->query[$campo])){	    
		    $nombre = $this->request->query[$campo];
			$this->request->data['Message'][$campo] = $nombre ;
			$conditions = array('conditions' => array('Message.'.$campo.' LIKE' => '%'.$nombre.'%'));
			$this->Paginator->settings = array_merge($this->Paginator->settings,$conditions);
		}
		$this->set('messages', $this->Paginator->paginate());
	}

	public function index2() {
	    
	    $conditions = array();
	    if (isset($this->request->query['userId']) && !empty($this->request->query['userId'])){
	        $userId = $this->request->query['userId'];
	        $this->Message->User->unBindModel(array('hasMany'=>array('Message')));
	        $options = array('conditions' => array('User.id' => $userId),
	                         'recursive' => 1);
	        $User = $this->Message->User->find('first',$options);
	        $unidadId = $User['Unidad']['id'];
	        $cargoId = $User['Cargo']['id'];
	        $conditions = array('Message.unidad_id' => array(1,$unidadId),
	            'Message.cargo_id' => array(1,$cargoId)
	        );
	    }	    
	    
	    $options = array('conditions'=> $conditions,
	                   'order' => array('fecha DESC'),
	                   'recursive' => 1);
	    
	    $Messages = $this->Message->find('all',$options);	    
	    $this->set(array(
	        'Messages' => $Messages,
	        '_serialize' => array('Messages')
	    ));
	}
/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Message->exists($id)) {
			throw new NotFoundException(__('Invalid message'));
		}
		$options = array('conditions' => array('Message.' . $this->Message->primaryKey => $id));
		$this->set('message', $this->Message->find('first', $options));
	}
	
	public function view2($id) {
	    $options = array('conditions' => array('Message.id' => $id),
	        'recursive' => 1);
	    $Message = $this->Message->find('first',$options);
	    
	    $Message = Set::extract($Message, 'Message');
	    $this->set(array(
	        'Message' => $Message,
	        '_serialize' => array('Message')
	    ));
	}
	
/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
		    //pr($this->request->data);
			$this->Message->create();
			if ($this->Message->save($this->request->data)) {
			    //pr($this->Message->validationErrors); 
				$this->Flash->success(__('The message has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The message could not be saved. Please, try again.'));
			}
		}	
		
		$users =  $this->Message->User->find("list", array(
		    "fields" => array("id", "usuario"),
		    "order" => array("User.id ASC"),
		    "conditions" => array('User.estado' => 'A')
		));
		$unidades = $this->Message->Unidad->find('list');
		$cargos = $this->Message->Cargo->find('list');
		$this->set(compact('users','unidades','cargos'));
	}
	
	public function add2() {	    
	    if (!isset($this->request->data['fecha']) || empty($this->request->data['fecha'])){
	        $this->request->data['fecha'] = date('Y-m-d H:i:s'); 
	    }
	    
	    $this->Message->create();
	    if ($this->Message->save($this->request->data)) {
	        $message = 'Guardado';
	    } else {
	        $message = 'Error';
	    }
	    $this->set(array(
	        'message' => $message,
	        '_serialize' => array('message')
	    ));
	}
	
/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->Message->exists($id)) {
			throw new NotFoundException(__('Invalid message'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Message->save($this->request->data)) {
				$this->Flash->success(__('The message has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The message could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Message.' . $this->Message->primaryKey => $id));
			$this->request->data = $this->Message->find('first', $options);
			//pr($this->request->data);
		}
		
		$users =  $this->Message->User->find("list", array(
		    "fields" => array("id", "usuario"),
		    "order" => array("User.id ASC"),
		    "conditions" => array('User.estado' => 'A')
		));
		$unidades = $this->Message->Unidad->find('list');
		$cargos = $this->Message->Cargo->find('list');
		$this->set(compact('users','unidades','cargos'));
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->Message->id = $id;
		if (!$this->Message->exists()) {
			throw new NotFoundException(__('Invalid message'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->Message->delete()) {
			$this->Flash->success(__('The message has been deleted.'));
		} else {
			$this->Flash->error(__('The message could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
