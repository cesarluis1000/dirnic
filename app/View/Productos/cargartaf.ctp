<?php 
if (!isset($productos)){
    $boton = 'Cargar';
}else{
    $boton = 'Actualizar';
}
?>

<fieldset>
	<legend><?php echo __('Cargar'); ?></legend>
    	<?php echo $this->Form->create('Cargar', array('class' => 'form-horizontal',
    		'inputDefaults'=>array('div' => array('class' => 'form-group'),'between' => '<div class="col-sm-6">','after' => '</div>','class'=>'form-control input-xs','error' => array('attributes' => array('wrap' => 'span', 'class' => 'help-inline'))))); ?>
    		<?php
    		echo $this->Form->input('taf',array('type' => 'textarea','label'=>array('class'=>'control-label col-sm-2')));
    	?>
    	<div class="form-group">
    		<div class="col-sm-offset-2 col-sm-10">    		
    			<?php echo $this->Form->button($boton, array('name' => $boton,'type' => 'submit','class'=>'btn btn-success'));  ?>    			
    		</div>
    	</div>
    	<?php echo $this->Form->end(); ?>
</fieldset>

<?php if (isset($productos)){ ?>
    <table class="table table-hover table-condensed">
    	<thead>
        	<tr>
        			<th><?php echo 'Id'; ?></th>
        			<th><?php echo 'Aerodromo'; ?></th>
        			<th><?php echo 'Estacion'; ?></th>
        			<th><?php echo 'Detalle'; ?></th>
        			<th><?php echo 'Modificador'; ?></th>
        			<th><?php echo 'Modificado'; ?></th>
        	</tr>
    	</thead>
    	<tbody>
    	<?php foreach ($productos as $producto): ?>
        	<tr>
        		<td><?php echo h($producto['Producto']['id']); ?>&nbsp;</td>
        		<td><?php echo h($producto['Producto']['aerodromo']); ?>&nbsp;</td>
        		<td><?php echo h($producto['Producto']['estacion']); ?>&nbsp;</td>
        		<td><?php echo h($producto['Producto']['detalle']); ?>&nbsp;</td>
        		<td><?php echo h($producto['Producto']['modificador']); ?>&nbsp;</td>
        		<td><?php echo h($producto['Producto']['modificado']); ?>&nbsp;</td>
        	</tr>
    	<?php endforeach; ?>
    	</tbody>
    	</table>	
    </div>	
<?php } ?>	
