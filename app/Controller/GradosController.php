<?php
App::uses('AppController', 'Controller');
/**
 * Grados Controller
 *
 * @property Grado $Grado
 * @property PaginatorComponent $Paginator
 */
class GradosController extends AppController {

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
		$this->Grado->recursive = 0;
		//Si se busca campo displayField del modelo
		$campo = !empty($this->Grado->displayField)?$this->Grado->displayField:'id';
		$this->set('campo',$campo);
		if (!empty($this->request->query[$campo])){	    
		    $nombre = $this->request->query[$campo];
			$this->request->data['Grado'][$campo] = $nombre ;
			$conditions = array('conditions' => array('Grado.'.$campo.' LIKE' => '%'.$nombre.'%'));
			$this->Paginator->settings = array_merge($this->Paginator->settings,$conditions);
		}
		$this->set('grados', $this->Paginator->paginate());
	}
	
	public function index2() {
	    $options = array('fields' => array('id', 'nombre'),'order' => array('id ASC'),'recursive' => -1);
	    $grados = $this->Grado->find('all',$options);
	    $this->set(array(
	        'Grados' => $grados,
	        '_serialize' => array('Grados')
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
		if (!$this->Grado->exists($id)) {
			throw new NotFoundException(__('Invalid grado'));
		}
		$options = array('conditions' => array('Grado.' . $this->Grado->primaryKey => $id));
		$this->set('grado', $this->Grado->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Grado->create();
			if ($this->Grado->save($this->request->data)) {
				$this->Flash->success(__('The grado has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The grado could not be saved. Please, try again.'));
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
		if (!$this->Grado->exists($id)) {
			throw new NotFoundException(__('Invalid grado'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Grado->save($this->request->data)) {
				$this->Flash->success(__('The grado has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The grado could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Grado.' . $this->Grado->primaryKey => $id));
			$this->request->data = $this->Grado->find('first', $options);
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
		$this->Grado->id = $id;
		if (!$this->Grado->exists()) {
			throw new NotFoundException(__('Invalid grado'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->Grado->delete()) {
			$this->Flash->success(__('The grado has been deleted.'));
		} else {
			$this->Flash->error(__('The grado could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
