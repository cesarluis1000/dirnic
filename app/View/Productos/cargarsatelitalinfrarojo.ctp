<fieldset>
	<legend><?php echo __('Satelital infrarojo'); ?></legend>
    	<?php echo $this->Form->create('Cargar', array('class' => 'form-horizontal','type' => 'file',
    		                                          'inputDefaults'=>array('div'      => array('class' => 'form-group'),
                                                		                      'between'   => '<div class="col-sm-6">',
                                                		                      'after'     => '</div>',
                                                		                      'class'     => 'form-control input-xs',
                                                		                      'error'     =>  array('attributes' => array('wrap' => 'span', 
                                                		                                                                  'class' => 'help-inline'))))); ?>
    	<?php
    		echo $this->Form->input('infrarojo', array('type' => 'file','label'=>array('class'=>'control-label col-sm-2')));
    	?>
    	
    	<div class="form-group">
    		<div class="col-sm-offset-2 col-sm-10">    		
    			<?php $infrarojo_src = $this->webroot.'img/'.$infrarojo; ?>
				<img src="<?php echo $infrarojo_src;?>" width="300">    			
    		</div>
    	</div>
    	
    	<div class="form-group">
    		<div class="col-sm-offset-2 col-sm-10">    		
    			<?php echo $this->Form->button('Actualizar imagen', array('type' => 'submit','class'=>'btn btn-success'));  ?>    			
    		</div>
    	</div>
    	<?php echo $this->Form->end(); ?>
</fieldset>