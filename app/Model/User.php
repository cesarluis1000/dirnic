<?php
App::uses('AppModel', 'Model');
/**
 * User Model
 *
 * @property Group $Group
 */
class User extends AppModel {

/**
 * Display field
 *
 * @var string
 */
	public $displayField = 'grado';
	//var $virtualFields = array('usuario' => 'CONCAT(User.grado, " => ",User.nombres, " ", User.app)');
	var $virtualFields = array('usuario' => 'CONCAT(User.nombres, " ", User.app)');
/**
 * Validation rules
 *
 * @var array
 */
	public $validate = array(
	    	    
		'username' => array(
			'notBlank' => array(
				'rule' => array('notBlank'),
				'message' => 'Your custom message here'
			),
		    'uniqueEmailRule' => array(
		        'rule' => 'isUnique',
		        'message' => 'Email already registered'
		    )
		),
		'password' => array(
			'notBlank' => array(
				'rule' => array('notBlank'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'group_id' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'estado' => array(
			'notBlank' => array(
				'rule' => array('notBlank'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
	);

	// The Associations below have been created with all possible keys, those that are not needed can be removed

/**
 * belongsTo associations
 *
 * @var array
 */
	public $belongsTo = array(
		'Group' => array(
			'className' => 'Group',
			'foreignKey' => 'group_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
	    'Unidad' => array(
	        'className' => 'Unidad',
	        'foreignKey' => 'unidad_id',
	        'conditions' => '',
	        'fields' => '',
	        'order' => ''
	    ),
	    'Cargo' => array(
	        'className' => 'Cargo',
	        'foreignKey' => 'cargo_id',
	        'conditions' => '',
	        'fields' => '',
	        'order' => ''
	    ),
	    'Grado' => array(
	        'className' => 'Grado',
	        'foreignKey' => 'grado_id',
	        'conditions' => '',
	        'fields' => '',
	        'order' => ''
	    ),
	    'Departamento' => array(
	        'className' => 'Departamento',
	        'foreignKey' => 'departamento_id',
	        'conditions' => '',
	        'fields' => '',
	        'order' => ''
	    )
	);
	
	public $hasMany = array(
	    'Message' => array(
	        'className' => 'Message',
	        'foreignKey' => 'user_id',
	        'dependent' => false,
	        'conditions' => '',
	        'fields' => '',
	        'order' => '',
	        'limit' => '',
	        'offset' => '',
	        'exclusive' => '',
	        'finderQuery' => '',
	        'counterQuery' => ''
	    )
	);
	
    public function beforeSave($options = array()) {
            $this->data['User']['password'] = AuthComponent::password(
              $this->data['User']['password']
            );
            return true;
        }	
	
    public $actsAs = array('Acl' => array('type' => 'requester'));

    public function parentNode() {
        if (!$this->id && empty($this->data)) {
            return null;
        }
        if (isset($this->data['User']['group_id'])) {
            $groupId = $this->data['User']['group_id'];
        } else {
            $groupId = $this->field('group_id');
        }
        if (!$groupId) {
            return null;
        }
        return array('Group' => array('id' => $groupId));
    }
	
	public function afterSave($created, $options = array()){
		$this->Aro->save(array('alias'=>$this->data[$this->alias]['username']));
	}
}
