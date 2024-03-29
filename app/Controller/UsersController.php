<?php
App::uses('AppController', 'Controller');
/**
 * Users Controller
 *
 * @property User $User
 * @property PaginatorComponent $Paginator
 */
class UsersController extends AppController {

/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator');

	/*public function beforeFilter() {
	    parent::beforeFilter();
	    $this->Auth->allow('initDB'); // We can remove this line after we're finished
	}*/
	
	public function initDB() {
	    $group = $this->User->Group;
	
	    // Allow admins to everything
	    $group->id = 1;
	    $this->Acl->allow($group, 'controllers');
	
	    // allow managers to posts and widgets
	    $group->id = 2;
	    $this->Acl->deny($group, 'controllers');
	    $this->Acl->allow($group, 'controllers/Categorias');
	    $this->Acl->allow($group, 'controllers/Subcategorias');
	    $this->Acl->allow($group, 'controllers/Marcas');
	    $this->Acl->allow($group, 'controllers/Productos');
	
	    // allow users to only add and edit on posts and widgets
	    $group->id = 3;
	    $this->Acl->deny($group, 'controllers');
	    $this->Acl->allow($group, 'controllers/Productos');
	    $this->Acl->deny($group, 'controllers/Productos/edit');
	
	    // allow basic users to log out
	    $this->Acl->allow($group, 'controllers/users/logout');
	
	    // we add an exit to avoid an ugly "missing views" error message
	    echo "all done";
	    exit;
	}
	
	public function login() {
	    if ($this->request->is('post')) {
	        if ($this->Auth->login()) {
	            return $this->redirect($this->Auth->redirectUrl());
	        }
	        $this->Flash->error(__('Your username or password was incorrect.'));
	    }
	}
    
	public function login2() {
	    $username = $this->request->data["username"];
	    $password = AuthComponent::password($this->request->data["password"]);

	    $this->User->unBindModel(array('hasMany'=>array('Message')));
	    $options = array('conditions' => array('username' => $username),
	                     'recursive' => 1);
	    $User = $this->User->find('first',$options);
        
        if(!empty($User) && $User['User']['password'] == $password){
            $Rpta = 1;
            //$User = Set::extract($User, 'User');
        }elseif(!empty($User)){
            $Rpta = -1; //'La contraseña es incorrecta';
            $User = Set::extract($User, 'User');
        }else{
            $Rpta = -2; //'El usuario no existe';
        }
	    
	    $this->set(array(
            'message' => array('Rpta' => $Rpta,'User' => $User),
            '_serialize' => array('message')
        ));
	}
	
	public function logout() {
	    $this->Flash->success(__('Good-Bye'));
	    return $this->redirect($this->Auth->logout());
	    //Leave empty for now.
	}
	
/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->User->recursive = 0;
		//Si se busca campo displayField del modelo
		$campo = !empty($this->User->displayField)?$this->User->displayField:'id';
		$this->set('campo',$campo);
		if (!empty($this->request->query[$campo])){	    
		    $nombre = $this->request->query[$campo];
			$this->request->data['User'][$campo] = $nombre ;
			$conditions = array('conditions' => array('User.'.$campo.' LIKE' => '%'.$nombre.'%'));
			$this->Paginator->settings = array_merge($this->Paginator->settings,$conditions);
		}
		
		$users = $this->Paginator->paginate();
		$this->set('users', $users);
	}
	
	public function index2() {
	    $options = array('recursive' => -1);
	    $Users = $this->User->find('all',$options);
        $Users = Set::extract($Users, '{n}.User');
        $this->set(array(
            'Users' => $Users,
            '_serialize' => array('Users')
        ));
    }
	
    /**
     * add method
     *
     * @return void
     */
	public function add() {
		if ($this->request->is('post')) {
			$this->User->create();
			if ($this->User->save($this->request->data)) {
				$this->Flash->success(__('The user has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The user could not be saved. Please, try again.'));
			}
		}
		$groups = $this->User->Group->find('list');
		$this->set(compact('groups'));
	}
	
    public function add2() {
        $this->User->create();
        if ($this->User->save($this->request->data)) {
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
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->User->exists($id)) {
			throw new NotFoundException(__('Invalid user'));
		}
		$options = array('conditions' => array('User.' . $this->User->primaryKey => $id));
		$this->set('user', $this->User->find('first', $options));
	}

    public function view2($id) {
        $this->User->unBindModel(array('hasMany'=>array('Message')));
        $options = array('conditions' => array('User.id' => $id),
                         'recursive' => 1);
        $User = $this->User->find('first',$options);
        
        //$User = Set::extract($User, 'User');
        $this->set(array(
            'User' => $User,
            '_serialize' => array('User')
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
		if (!$this->User->exists($id)) {
			throw new NotFoundException(__('Invalid user'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->User->save($this->request->data)) {
				$this->Flash->success(__('The user has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The user could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('User.' . $this->User->primaryKey => $id));
			$this->request->data = $this->User->find('first', $options);
		}
		$groups           = $this->User->Group->find('list');
		$unidades         = $this->User->Unidad->find('list');
		$cargos           = $this->User->Cargo->find('list');
		$grados           = $this->User->Grado->find('list');
		$departamentos    = $this->User->Departamento->find('list');
		
		$this->set(compact('groups','unidades','cargos','grados','departamentos'));
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->User->id = $id;
		if (!$this->User->exists()) {
			throw new NotFoundException(__('Invalid user'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->User->delete()) {
			$this->Flash->success(__('The user has been deleted.'));
		} else {
			$this->Flash->error(__('The user could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
