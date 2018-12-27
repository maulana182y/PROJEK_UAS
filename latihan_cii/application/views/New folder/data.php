<?php echo form_open('Barang/simpan_data'); ?>
<table>
	<tr>
		<td>Id Barang</td>
		<td><?php echo form_input('id', ''); ?></td>
	</tr>
	<tr>
		<td>Nama Barang</td>
		<td><?php echo form_input('nama', ''); ?></td>
	</tr>
	<tr>
		<td>Harga Barang</td>
		<td><?php echo form_input('harga', ''); ?></td>
	</tr>
	<td>Keterangan</td>
	<td><?php echo form_input('ket', ''); ?></td>
</tr>
<tr>
	<td colspan="2"><?php echo form_submit('kirim', 'kirim'); ?></td>
</tr>
</table>
<?php echo form_close(); ?>