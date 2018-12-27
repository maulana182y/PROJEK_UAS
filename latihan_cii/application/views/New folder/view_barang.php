<?php echo anchor('barang/tambah_data','Tambah data!'); ?>
<table border="1">
	<tr>
		<th>id_barang</th>
		<th>nama_barang</th>
		<th>harga</th>
		<th>ket</th>
	</tr>
	<?php foreach ($barang as $brg) :?>
		<tr>
			<td><?php echo $brg->id_barang ?></td>
			<td><?php echo $brg->nama_barang; ?></td>
			<td><?php echo $brg->harga; ?></td>
			<td><?php echo $brg->ket; ?></td>

		</tr>
	<?php endforeach ?>
</table>
