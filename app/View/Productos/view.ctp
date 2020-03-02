<h2><?php echo __('Producto'); ?></h2>
	<dl class="dl-horizontal">
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo h($producto['Producto']['id']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Aerodromo'); ?></dt>
		<dd>
			<?php echo h($producto['Producto']['aerodromo']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Abreviacion'); ?></dt>
		<dd>
			<?php echo h($producto['Producto']['abreviacion']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Nombre'); ?></dt>
		<dd>
			<?php echo h($producto['Producto']['nombre']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Latitud'); ?></dt>
		<dd>
			<?php echo h($producto['Producto']['latitud']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Longitud'); ?></dt>
		<dd>
			<?php echo h($producto['Producto']['longitud']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Estacion'); ?></dt>
		<dd>
			<?php echo h($producto['Producto']['estacion']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Detalle'); ?></dt>
		<dd>
			<?php echo h($producto['Producto']['detalle']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Categoria'); ?></dt>
		<dd>
			<?php echo $this->Html->link($producto['Categoria']['nombre'], array('controller' => 'categorias', 'action' => 'view', $producto['Categoria']['id'])); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Precio'); ?></dt>
		<dd>
			<?php echo h($producto['Producto']['precio']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Imagenchica'); ?></dt>
		<dd>
			<?php echo h($producto['Producto']['imagenchica']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Imagengrande'); ?></dt>
		<dd>
			<?php echo h($producto['Producto']['imagengrande']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Creador'); ?></dt>
		<dd>
			<?php echo h($producto['Producto']['creador']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Creado'); ?></dt>
		<dd>
			<?php echo h($producto['Producto']['creado']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modificador'); ?></dt>
		<dd>
			<?php echo h($producto['Producto']['modificador']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Modificado'); ?></dt>
		<dd>
			<?php echo h($producto['Producto']['modificado']); ?>
			&nbsp;
		</dd>
	</dl>
