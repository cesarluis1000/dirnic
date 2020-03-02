<fieldset>
	<legend><?php echo __('Satelital Visual'); ?></legend>
    	<?php echo $this->Form->create('Cargar', array('class' => 'form-horizontal','type' => 'file',
    		                                          'inputDefaults'=>array('div'      => array('class' => 'form-group'),
                                                		                      'between'   => '<div class="col-sm-6">',
                                                		                      'after'     => '</div>',
                                                		                      'class'     => 'form-control input-xs',
                                                		                      'error'     =>  array('attributes' => array('wrap' => 'span', 
                                                		                                                                  'class' => 'help-inline'))))); ?>
    	<?php
    		echo $this->Form->input('visual', array('type' => 'file','label'=>array('class'=>'control-label col-sm-2')));
    	?>
    	
    	<div class="form-group">
    		<div class="col-sm-offset-2 col-sm-10">    		
    			<?php $visual_src = $this->webroot.'img/'.$visual; ?>
				<img src="<?php echo $visual_src;?>" width="300">    			
    		</div>
    	</div>
    	
    	<div class="form-group">
    		<div class="col-sm-offset-2 col-sm-10">    		
    			<?php echo $this->Form->button('Actualizar imagen', array('type' => 'submit','class'=>'btn btn-success'));  ?>    			
    		</div>
    	</div>
    	<?php echo $this->Form->end(); ?>
</fieldset>