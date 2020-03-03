<fieldset>
	<legend><?php echo __('Editar Message'); ?></legend>
	<?php echo $this->Form->create('Message', array('class' => 'form-horizontal',
		'inputDefaults'=>array('div' => array('class' => 'form-group'),'between' => '<div class="col-sm-6">','after' => '</div>','class'=>'form-control input-xs','error' => array('attributes' => array('wrap' => 'span', 'class' => 'help-inline'))))); ?>
		<?php
		echo $this->Form->input('id',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('user_id',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('grado',array('label'=>array('class'=>'control-label col-sm-2'),'readonly' => 'readonly'));
		echo $this->Form->input('unidad_policial',array('label'=>array('class'=>'control-label col-sm-2'),'readonly' => 'readonly'));
		echo $this->Form->input('cargo',array('label'=>array('class'=>'control-label col-sm-2'),'readonly' => 'readonly'));
		echo $this->Form->input('fecha',array('label'=>array('class'=>'control-label col-sm-2'),'type' => 'text','placeholder'=>'YYYY-MM-DD'));
		echo $this->Form->input('destino_unidad',array('label'=>array('class'=>'control-label col-sm-2'),'options'=> $a_destino_unidad,'empty' => 'Seleccionar'));
		echo $this->Form->input('destino_cargo',array('label'=>array('class'=>'control-label col-sm-2'),'options'=> $a_destino_cargo,'empty' => 'Seleccionar'));
		echo $this->Form->input('mensaje',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('imagen',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('video',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('estado',array('label'=>array('class'=>'control-label col-sm-2'),'options'=> $a_estados,'empty' => 'Seleccionar'));
	?>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
					<?php echo $this->Form->button('Guardar', array('type' => 'submit','class'=>'btn btn-success'));  ?>
		</div>
	</div>
		<?php echo $this->Form->end(); ?>
</fieldset>
<?php echo $this->Html->script('model/message.js'); ?>