<?php
App::uses('AppController', 'Controller');
/**
 * Unidades Controller
 *
 * @property Unidad $Unidad
 * @property PaginatorComponent $Paginator
 */
class UnidadesController extends AppController {

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
		$this->Unidad->recursive = 0;
		//Si se busca campo displayField del modelo
		$campo = !empty($this->Unidad->displayField)?$this->Unidad->displayField:'id';
		$this->set('campo',$campo);
		if (!empty($this->request->query[$campo])){	    
		    $nombre = $this->request->query[$campo];
			$this->request->data['Unidad'][$campo] = $nombre ;
			$conditions = array('conditions' => array('Unidad.'.$campo.' LIKE' => '%'.$nombre.'%'));
			$this->Paginator->settings = array_merge($this->Paginator->settings,$conditions);
		}
		$this->set('unidades', $this->Paginator->paginate());
	}
	
	public function index2() {
	    $options = array('fields' => array('id', 'nombre'),'order' => array('id ASC'),'recursive' => -1);
	    $Unidades = $this->Unidad->find('all',$options);
	    //pr($Unidades); exit;
	    //$Unidades = Set::extract($Unidades, '{n}.Unidad');
	    $this->set(array(
	        'Unidades' => $Unidades,
	        '_serialize' => array('Unidades')
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
		if (!$this->Unidad->exists($id)) {
			throw new NotFoundException(__('Invalid unidad'));
		}
		$options = array('conditions' => array('Unidad.' . $this->Unidad->primaryKey => $id));
		$this->set('unidad', $this->Unidad->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Unidad->create();
			if ($this->Unidad->save($this->request->data)) {
				$this->Flash->success(__('The unidad has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The unidad could not be saved. Please, try again.'));
			}
		}
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->Unidad->exists($id)) {
			throw new NotFoundException(__('Invalid unidad'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Unidad->save($this->request->data)) {
				$this->Flash->success(__('The unidad has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The unidad could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Unidad.' . $this->Unidad->primaryKey => $id));
			$this->request->data = $this->Unidad->find('first', $options);
		}
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->Unidad->id = $id;
		if (!$this->Unidad->exists()) {
			throw new NotFoundException(__('Invalid unidad'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->Unidad->delete()) {
			$this->Flash->success(__('The unidad has been deleted.'));
		} else {
			$this->Flash->error(__('The unidad could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
