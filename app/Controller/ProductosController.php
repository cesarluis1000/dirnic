<?php
App::uses('AppController', 'Controller');
/**
 * Productos Controller
 *
 * @property Producto $Producto
 * @property PaginatorComponent $Paginator
 */
class ProductosController extends AppController {

/**
 * Components
 *
 * @var array
 */
	public $components = array('Paginator');
	
	public function cargaralerta(){
	    
	    if (!empty($this->request->data['Cargar']['alerta']['tmp_name'])){
	        try{
	            
	            $filename = '';
	            $uploadData = $this->data['Cargar']['alerta'];
	            if ( $uploadData['size'] > 2048000 || $uploadData['error'] !== 0) {
	                throw new Exception('La imagen alerta excede el tamaño de 2 mb, intente nuevamente.');
	            }
	            
	            if ( $uploadData['type'] != 'image/jpeg') {
	                throw new Exception('La imagen alerta no es de tipo JPG, intente nuevamente.');
	            }
	            
	            //$filename = basename($uploadData['name']);
	            $uploadFolder = WWW_ROOT. 'img';
	            //$filename = time() .'_'. $filename;
	            $filename = 'alertas2.jpg';
	            $uploadPath =  $uploadFolder . DS . $filename;
	            if( !file_exists($uploadFolder) ){
	                mkdir($uploadFolder);
	            }
	            if (!move_uploaded_file($uploadData['tmp_name'], $uploadPath)) {
	                return false;
	            }
	            
	            $this->Flash->success(__('Las imagen Satelital alerta fue actualizado'));
	            
	        }catch(Exception $e){
	            $this->Flash->error($e);
	        }
	    }
	    $random1 = substr(number_format(time() * rand(),0,'',''),0,10);
	    $alerta     = 'alertas2.jpg?n='.$random1;
	    $this->set(compact('alerta'));
	}
	
	public function cargarpronostico(){
	    
	    if (!empty($this->request->data['Cargar']['pronostico']['tmp_name'])){
	        try{
	            
	            $filename = '';
	            $uploadData = $this->data['Cargar']['pronostico'];
	            if ( $uploadData['size'] > 2048000 || $uploadData['error'] !== 0) {
	                throw new Exception('La imagen pronostico excede el tamaño de 2 mb, intente nuevamente.');
	            }
	            
	            if ( $uploadData['type'] != 'image/jpeg') {
	                throw new Exception('La imagen pronostico no es de tipo JPG, intente nuevamente.');
	            }
	            
	            //$filename = basename($uploadData['name']);
	            $uploadFolder = WWW_ROOT. 'img';
	            //$filename = time() .'_'. $filename;
	            $filename = 'pronostico2.jpg';
	            $uploadPath =  $uploadFolder . DS . $filename;
	            if( !file_exists($uploadFolder) ){
	                mkdir($uploadFolder);
	            }
	            if (!move_uploaded_file($uploadData['tmp_name'], $uploadPath)) {
	                return false;
	            }
	            
	            $this->Flash->success(__('Las imagen Satelital pronostico fue actualizado'));
	            
	        }catch(Exception $e){
	            $this->Flash->error($e);
	        }
	    }
	    $random1 = substr(number_format(time() * rand(),0,'',''),0,10);
	    $pronostico     = 'pronostico2.jpg?n='.$random1;
	    $this->set(compact('pronostico'));
	}
	
	public function cargarsatelitalvisual(){	    

	    if (!empty($this->request->data['Cargar']['visual']['tmp_name'])){
    	    try{    	        

    	            $filename = '';
    	            $uploadData = $this->data['Cargar']['visual'];
    	            if ( $uploadData['size'] > 2048000 || $uploadData['error'] !== 0) {    	                
    	                throw new Exception('La imagen Satelital visual excede el tamaño de 2 mb, intente nuevamente.');
    	            }
    	            
    	            if ( $uploadData['type'] != 'image/jpeg') {
    	                throw new Exception('La imagen Satelital visual no es de tipo JPG, intente nuevamente.');
    	            }
    	            
    	            //$filename = basename($uploadData['name']);
    	            $uploadFolder = WWW_ROOT. 'img';
    	            //$filename = time() .'_'. $filename;
    	            $filename = 'visual2.jpg';
    	            $uploadPath =  $uploadFolder . DS . $filename;
    	            if( !file_exists($uploadFolder) ){
    	                mkdir($uploadFolder);
    	            }
    	            if (!move_uploaded_file($uploadData['tmp_name'], $uploadPath)) {
    	                return false;
    	            }
    	            
    	            $this->Flash->success(__('Las imagen Satelital Visual fue actualizado'));
    	        
    	    }catch(Exception $e){
    	        $this->Flash->error($e);	        
    	    }
	    }
	    $random1 = substr(number_format(time() * rand(),0,'',''),0,10);
	    $visual     = 'visual2.jpg?n='.$random1;
	    //pr($visual);
	    $this->set(compact('visual'));
	}
	
	public function cargarsatelitalinfrarojo(){
	    
	    if (!empty($this->request->data['Cargar']['infrarojo']['tmp_name'])){
	        try{
	            
	            $filename = '';
	            $uploadData = $this->data['Cargar']['infrarojo'];
	            if ( $uploadData['size'] > 2048000 || $uploadData['error'] !== 0) {
	                throw new Exception('La imagen Satelital infrarojo excede el tamaño de 2 mb, intente nuevamente.');
	            }
	            
	            if ( $uploadData['type'] != 'image/jpeg') {
	                throw new Exception('La imagen Satelital infrarojo no es de tipo JPG, intente nuevamente.');
	            }
	            
	            //$filename = basename($uploadData['name']);
	            $uploadFolder = WWW_ROOT. 'img';
	            //$filename = time() .'_'. $filename;
	            $filename = 'infrarojo2.jpg';
	            $uploadPath =  $uploadFolder . DS . $filename;
	            if( !file_exists($uploadFolder) ){
	                mkdir($uploadFolder);
	            }
	            if (!move_uploaded_file($uploadData['tmp_name'], $uploadPath)) {
	                return false;
	            }
	            
	            $this->Flash->success(__('Las imagen Satelital infrarojo fue actualizado'));
	            
	        }catch(Exception $e){
	            $this->Flash->error($e);
	        }
	    }
	    $random1 = substr(number_format(time() * rand(),0,'',''),0,10);
	    $infrarojo     = 'infrarojo2.jpg?n='.$random1;
	    $this->set(compact('infrarojo'));
	}
		
	public function cargarmetar(){
	    if ($this->request->is(array('post', 'put'))) {
	        $currentUser = $this->Auth->user();
	        $lineas = explode("\r\n",$this->request->data['Cargar']['metar']);
	        $productos = array();
	        foreach ($lineas as $i => $linea){
	            if (!empty(trim($linea))){
	                $fila = explode("\t",$linea);
	                $productos[$i]['Producto']['aerodromo']    = ucwords(strtolower($fila[0]));
	                $productos[$i]['Producto']['estacion']     = ($fila[1] == 'FAP')?'FAP':'CORPAC';
	                $productos[$i]['Producto']['detalle']      = $fila[2];
	                $productos[$i]['Producto']['modificador']  = $currentUser['username'];
	                $productos[$i]['Producto']['modificado']   = date("Y-m-d H:i:s");
	                
	                $options = array(
	                    'conditions' => array('aerodromo' => $productos[$i]['Producto']['aerodromo'],
	                        'estacion' =>  $productos[$i]['Producto']['estacion']
	                    ),
	                    'recursive' => -1
	                );
	                $aerodromo = $this->Producto->find('first',$options);
	                $productos[$i]['Producto']['id']   = $aerodromo['Producto']['id'];
	            }

	        }	        
	        $this->set('productos', $productos);
	        
	        if (isset($this->request->data['Actualizar'])){
	            
	            
	            try {
	            
	                foreach ($productos as $i => $linea){
	                    $options = array(
	                           'conditions' => array('aerodromo'       => $productos[$i]['Producto']['aerodromo'],
	                                                 'categoria_id'    => 1, //METAR
                        	                         'estacion'        => $productos[$i]['Producto']['estacion']
                        	                        ),
	                        'recursive' => -1
	                    );
	                    $aerodromo = $this->Producto->find('first',$options);
	                    //pr($aerodromo); exit;
	                    if (!empty($aerodromo)){
	                        $aerodromo['Producto']['detalle']      = $productos[$i]['Producto']['detalle'];
	                        $aerodromo['Producto']['modificador']  = $productos[$i]['Producto']['modificador'];
	                        $aerodromo['Producto']['modificado']   = $productos[$i]['Producto']['modificado'];
	                        
	                    }
	                    //pr($aerodromo); exit;
	                    if (!$this->Producto->save($aerodromo)) {
	                        throw new Exception($productos[$i]['Producto']['aerodromo']);
	                    }	                    
	                    
	                }
	                
	            }catch(Exception $e){
	                $this->Flash->error(__('Los Aerodromos no se actualizaron. por favor, intente nuevamente.'+$e));
	                return;
	            }
	            
	            $this->Flash->success(__('Los Aerodromos fueron actualizados'));
	        }
	        
	        
	    }
	}

	public function cargartaf(){
	    if ($this->request->is(array('post', 'put'))) {
	        $currentUser = $this->Auth->user();
	        $lineas = explode("\r\n",$this->request->data['Cargar']['taf']);
	        $productos = array();
	        foreach ($lineas as $i => $linea){
	            if (!empty(trim($linea))){
	                $fila = explode("\t",$linea);
	                $productos[$i]['Producto']['aerodromo']    = ucwords(strtolower($fila[0]));
	                $productos[$i]['Producto']['estacion']     = ($fila[1] == 'FAP')?'FAP':'CORPAC';
	                $productos[$i]['Producto']['detalle']      = $fila[2];
	                $productos[$i]['Producto']['modificador']  = $currentUser['username'];
	                $productos[$i]['Producto']['modificado']   = date("Y-m-d H:i:s");
	                
	                $options = array(
	                    'conditions' => array('aerodromo' => $productos[$i]['Producto']['aerodromo'],
	                        'estacion' =>  $productos[$i]['Producto']['estacion']
	                    ),
	                    'recursive' => -1
	                );
	                $aerodromo = $this->Producto->find('first',$options);
	                $productos[$i]['Producto']['id']   = $aerodromo['Producto']['id'];
	            }
	            
	        }
	        $this->set('productos', $productos);
	        
	        if (isset($this->request->data['Actualizar'])){
	            
	            
	            try {
	                
	                foreach ($productos as $i => $linea){
	                    $options = array(
	                        'conditions' => array('aerodromo'       => $productos[$i]['Producto']['aerodromo'],
	                            'categoria_id'    => 2, //TAF
	                            'estacion'        => $productos[$i]['Producto']['estacion']
	                        ),
	                        'recursive' => -1
	                    );
	                    $aerodromo = $this->Producto->find('first',$options);
	                    //pr($aerodromo); exit;
	                    if (!empty($aerodromo)){
	                        $aerodromo['Producto']['detalle']      = $productos[$i]['Producto']['detalle'];
	                        $aerodromo['Producto']['modificador']  = $productos[$i]['Producto']['modificador'];
	                        $aerodromo['Producto']['modificado']   = $productos[$i]['Producto']['modificado'];
	                        
	                    }
	                    //pr($aerodromo); exit;
	                    if (!$this->Producto->save($aerodromo)) {
	                        throw new Exception($productos[$i]['Producto']['aerodromo']);
	                    }
	                    
	                }
	                
	            }catch(Exception $e){
	                $this->Flash->error(__('Los Aerodromos no se actualizaron. por favor, intente nuevamente.'+$e));
	                return;
	            }
	            
	            $this->Flash->success(__('Los Aerodromos fueron actualizados'));
	        }
	        
	        
	    }
	}
	
	public function servicioproductos(){
	    $this->layout = false;
	    $this->autoRender = false;
	    
	    //$categoria_id = $this->request->query['categoria_id'];	    
	    $categoria_id = $_REQUEST["categoria_id"];
	    $options = array('fields'=>array('id','aerodromo','abreviacion','nombre','latitud',
                            	        'longitud','estacion','detalle','categoria_id',
                            	        'precio','imagenchica','imagengrande'),
	                     'conditions' => array('categoria_id' => $categoria_id),
            	         'recursive' => -1
	    );
	    
	    $productos = $this->Producto->find('all',$options);
	    $productos = Set::extract('/Producto/.', $productos);
	    //pr($productos);
	    return json_encode($productos);
	}
/**
 * index method
 *
 * @return void
 */
	public function index() {
		$this->Producto->recursive = 0;
		//Si se busca campo displayField del modelo
		$campo = !empty($this->Producto->displayField)?$this->Producto->displayField:'id';
		$this->set('campo',$campo);
		if (!empty($this->request->query[$campo])){	    
		    $nombre = $this->request->query[$campo];
			$this->request->data['Producto'][$campo] = $nombre ;
			$conditions = array('conditions' => array('Producto.'.$campo.' LIKE' => '%'.$nombre.'%'));
			$this->Paginator->settings = array_merge($this->Paginator->settings,$conditions);
		}
		//pr($this->Paginator->paginate());
		$this->set('productos', $this->Paginator->paginate());
	}

/**
 * view method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function view($id = null) {
		if (!$this->Producto->exists($id)) {
			throw new NotFoundException(__('Invalid producto'));
		}
		$options = array('conditions' => array('Producto.' . $this->Producto->primaryKey => $id));
		$this->set('producto', $this->Producto->find('first', $options));
	}

/**
 * add method
 *
 * @return void
 */
	public function add() {
		if ($this->request->is('post')) {
			$this->Producto->create();
			if ($this->Producto->save($this->request->data)) {
				$this->Flash->success(__('The producto has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The producto could not be saved. Please, try again.'));
			}
		}
		$categorias = $this->Producto->Categoria->find('list');
		$this->set(compact('categorias'));
	}

/**
 * edit method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function edit($id = null) {
		if (!$this->Producto->exists($id)) {
			throw new NotFoundException(__('Invalid producto'));
		}
		if ($this->request->is(array('post', 'put'))) {
			if ($this->Producto->save($this->request->data)) {
				$this->Flash->success(__('The producto has been saved.'));
				return $this->redirect(array('action' => 'index'));
			} else {
				$this->Flash->error(__('The producto could not be saved. Please, try again.'));
			}
		} else {
			$options = array('conditions' => array('Producto.' . $this->Producto->primaryKey => $id));
			$this->request->data = $this->Producto->find('first', $options);
		}
		$categorias = $this->Producto->Categoria->find('list');
		$this->set(compact('categorias'));
	}

/**
 * delete method
 *
 * @throws NotFoundException
 * @param string $id
 * @return void
 */
	public function delete($id = null) {
		$this->Producto->id = $id;
		if (!$this->Producto->exists()) {
			throw new NotFoundException(__('Invalid producto'));
		}
		$this->request->allowMethod('post', 'delete');
		if ($this->Producto->delete()) {
			$this->Flash->success(__('The producto has been deleted.'));
		} else {
			$this->Flash->error(__('The producto could not be deleted. Please, try again.'));
		}
		return $this->redirect(array('action' => 'index'));
	}
}
