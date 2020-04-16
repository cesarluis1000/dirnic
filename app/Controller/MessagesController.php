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
		//pr($this->request->query);
		//pr($this->Paginator->settings);
		$conditions = array();
		if (!empty($this->request->query['Usuario']) && isset($this->request->query['Usuario'])){
		    $nombre = $this->request->query['Usuario'];
		    $this->request->data['Message']['Usuario'] = $nombre ;
		    $conditions = array('CONCAT(User.nombres, " ", User.app) LIKE' => '%'.$nombre.'%');
		    $this->Paginator->settings = array_merge($this->Paginator->settings,array('conditions' => $conditions));
		}
		//pr($this->Paginator->settings);
		if (!empty($this->request->query['unidad_id']) && isset($this->request->query['unidad_id'])){
		    $nombre2 = $this->request->query['unidad_id'];
		    $this->request->data['Message']['unidad_id'] = $nombre2 ;
		    $conditions = array_merge($conditions,array('Message.unidad_id' => $nombre2));
		    $this->Paginator->settings = array_merge($this->Paginator->settings,array('conditions' => $conditions));
		}
		//pr($this->Paginator->settings);
		if (!empty($this->request->query['cargo_id']) && isset($this->request->query['cargo_id'])){
		    $nombre3 = $this->request->query['cargo_id'];
		    $this->request->data['Message']['cargo_id'] = $nombre3 ;
		    $conditions = array_merge($conditions,array('Message.cargo_id' => $nombre3));
		    $this->Paginator->settings = array_merge($this->Paginator->settings,array('conditions' => $conditions));
		}
		//pr($this->Paginator->settings);
		$unidades = $this->Message->Unidad->find('list');
		$cargos   = $this->Message->Cargo->find('list');
		$messages = $this->Paginator->paginate();
		$this->set(compact('messages','unidades','cargos'));
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
	    
	    $offset = 0;
	    if (isset($this->request->query['offset']) && !empty($this->request->query['offset'])){
	        $offset = $this->request->query['offset'];
	    }
	    
	    $limit = 10;
	    if (isset($this->request->query['limit']) && !empty($this->request->query['limit'])){
	        $limit = $this->request->query['limit'];
	    }
	    
	    $options = array('conditions'=> $conditions,
	                    'order' => array('fecha DESC'),
            	        'offset' => $offset,
            	        'limit'=> $limit,
	                    'recursive' => 1);
	    
	    $Messages  = $this->Message->find('all',$options);
	    //pr($this->Message->getLastQuery());
	    $optionsCount  = array('conditions'=> $conditions,
                	        'order' => array('fecha DESC'),
                	        'recursive' => 1);
	    
	    $count = $this->Message->find('count',$optionsCount);
	    	    
	    $offsetNext    = $offset + $limit;
	    $next          = ($offset + $limit >= $count) ? null : Router::url('/', true).'api/messages.json?userId=9&offset='.$offsetNext.'&limit='.$limit;
	    
	    $offsetPrev    = $offset - $limit;
	    $previous      = ($offsetPrev < 0) ? null : Router::url('/', true).'api/messages.json?userId=9&offset='.$offsetPrev.'&limit='.$limit;	    
	    	    
	    $this->set(compact('count', 'next', 'previous', 'Messages'));
	    
	    $this->set(array(
	        //'Messagess' => $Messages,
	        '_serialize' => array('count', 'next', 'previous', 'Messages')
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
	    //pr($this->request->data); exit;
	    if ($this->request->is('post')) {
	        
	        $datasource = $this->Message->getDataSource();
	        
	         try{
	                
	               $datasource->begin();
	             
	               $uploadData = $this->request->data['Message']['file'];
	                $this->request->data['Message']['imagen'] = null;
	                
			        $this->Message->create();
	                if (!$this->Message->save($this->request->data)) {
	                    throw new Exception('The message could not be saved. Please, try again.');
	                }
                    
	                if (!empty($uploadData['name'])){
	                    
                        if ( $uploadData['size'] > 2048000 || $uploadData['error'] !== 0) {
                            throw new Exception('La imagen excede el tamaño de 2 mb, intente nuevamente.');
                        }
                        
                        if ( $uploadData['type'] != 'image/jpeg') {
                            throw new Exception('La imagen  no es de tipo JPG, intente nuevamente.');
                        }                        
                        
                        $messageId = $this->Message->getInsertID();
                        $path      = $messageId.".jpeg";
                        $this->Message->id  = $messageId;
                        
                        if(!$this->Message->saveField('imagen', $path)){
                            throw new Exception('Error de path');
                        }
                        
                        $this->request->data['Message']['id']      = $messageId;
                        $this->request->data['Message']['imagen']  = $path;                        
                       
                        //$uploadFolder = WWW_ROOT. 'img';
                        if( !file_exists($this->uploadFolder) ){
                            mkdir($this->uploadFolder);
                        }
                        
                        $uploadPath =  $this->uploadFolder . DS . $path;
                        if (!move_uploaded_file($uploadData['tmp_name'], $uploadPath)) {
                            throw new Exception('No se pudo guardar la imagen.');
                        }                        
                        	                   
                    }
                    
                    $datasource->commit();
                    $this->Flash->success(__('El mensaje fue guardado'));
                    return $this->redirect(array('action' => 'index'));
                    
	            }catch(Exception $e){
	                $datasource->rollback();
	                $this->Flash->error($e);
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
	    
	    $datasource = $this->Message->getDataSource();
	    
	    try{
	        
	        $datasource->begin();
	        
	        if (!isset($this->request->data['fecha']) || empty($this->request->data['fecha'])){
	            $this->request->data['fecha'] = date('Y-m-d H:i:s'); 
	        }
	        
	        $imagen = $this->request->data['imagen'];
	        $this->request->data['imagen'] = null;
	        
	        $this->Message->create();
    	    if(!$this->Message->save($this->request->data)){
    	        throw new Exception('Error de creacion');
    	    }
    	    
    	    if(!empty($imagen)){
        	    $messageId = $this->Message->getInsertID();
    	        $path      = $messageId.".jpeg";
        	    $this->Message->id  = $messageId;
        	    
        	    if(!$this->Message->saveField('imagen', $path)){
        	        throw new Exception('Error de path');
        	    }
        	    
        	    $this->request->data['id']      = $messageId;
                $this->request->data['imagen']  = $path;        	           	    
        	    
        	    //$uploadFolder = WWW_ROOT. 'img';        	    
        	    if( !file_exists($this->uploadFolder) ){
        	        mkdir($this->uploadFolder);
        	    }
        	    
        	    $finalPath = $this->uploadFolder . DS . $path;
        	    if(!file_put_contents( $finalPath, base64_decode($imagen) ) ){
        	        throw new Exception('Error de imagen');
        	    }    
    	    }
    	    
    	    $datasource->commit();
    	    $this->request->data['success']  = "1";
            $this->request->data['message']  = "success";
            
	    }catch(Exception $e){
	        $datasource->rollback();
	        $this->request->data['success']  = "2";
            $this->request->data['message']  = $e;
	    }
	    $this->set(array(
	        'message'    => $this->request->data,
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
	    //pr($this->request->data); exit;
		if (!$this->Message->exists($id)) {
			throw new NotFoundException(__('Invalid message'));
		}
		if ($this->request->is(array('post', 'put'))) {
		    
		    $datasource = $this->Message->getDataSource();
		    
            try{
                
                $datasource->begin();                
                if (!empty($this->request->data['Message']['file']['name'])){
                    
                    $uploadData = $this->data['Message']['file'];
                    if ( $uploadData['size'] > 2048000 || $uploadData['error'] !== 0) {
                        throw new Exception('La imagen excede el tamaño de 2 mb, intente nuevamente.');
                    }
                    
                    if ( $uploadData['type'] != 'image/jpeg') {
                        throw new Exception('La imagen no es de tipo JPG, intente nuevamente.');
                    }
                    
                    if( !file_exists($this->uploadFolder) ){
                        mkdir($this->uploadFolder);
                    }                                                
                    
                    $path      = $id.".jpeg";
                    $uploadPath =  $this->uploadFolder . DS . $path;
                    if (!move_uploaded_file($uploadData['tmp_name'], $uploadPath)) {
                        throw new Exception('No se pudo guardar la imagen.');
                    }
                    
                    $this->Message->id  = $id;
                    if(!$this->Message->saveField('imagen', $path)){
                        throw new Exception('Error de path');
                    }
                    
                }                

                if ($this->Message->save($this->request->data)) {
                    $datasource->commit();
        			$this->Flash->success(__('The message has been saved.'));
        			return $this->redirect(array('action' => 'index'));
        		} else {
        		    throw new Exception('The message could not be saved. Please, try again.');
        		}		            
                
            }catch(Exception $e){
                $datasource->rollback();
                $options = array('conditions' => array('Message.' . $this->Message->primaryKey => $id));
                $this->request->data = $this->Message->find('first', $options);
                $this->Flash->error($e);
            }
		    
		} else {
			$options = array('conditions' => array('Message.' . $this->Message->primaryKey => $id));
			$this->request->data = $this->Message->find('first', $options);
		}
		
	    $random1 = substr(number_format(time() * rand(),0,'',''),0,10);
	    $imagen  = $this->request->data['Message']['imagen'].'?n='.$random1;
		
		$users =  $this->Message->User->find("list", array(
		    "fields" => array("id", "usuario"),
		    "order" => array("User.id ASC"),
		    "conditions" => array('User.estado' => 'A')
		));
		$unidades = $this->Message->Unidad->find('list');
		$cargos = $this->Message->Cargo->find('list');
		$this->set(compact('imagen','users','unidades','cargos'));
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
