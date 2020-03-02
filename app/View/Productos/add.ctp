<fieldset>
	<legend><?php echo __('Add Producto'); ?></legend>
	<?php echo $this->Form->create('Producto', array('class' => 'form-horizontal',
		'inputDefaults'=>array('div' => array('class' => 'form-group'),'between' => '<div class="col-sm-6">','after' => '</div>','class'=>'form-control input-xs','error' => array('attributes' => array('wrap' => 'span', 'class' => 'help-inline'))))); ?>
		<?php
		echo $this->Form->input('aerodromo',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('abreviacion',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('nombre',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('latitud',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('longitud',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('estacion',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('detalle',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('categoria_id',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('precio',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('imagenchica',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('imagengrande',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('creador',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('creado',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('modificador',array('label'=>array('class'=>'control-label col-sm-2')));
		echo $this->Form->input('modificado',array('label'=>array('class'=>'control-label col-sm-2')));
	?>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
					<?php echo $this->Form->button('Guardar', array('type' => 'submit','class'=>'btn btn-success'));  ?>
		</div>
	</div>
		<?php echo $this->Form->end(); ?>
</fieldset>