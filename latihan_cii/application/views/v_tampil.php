<?php
?>
	<table style="margin:20px auto;" border="1">
		<thead>
			<tr>
				<th>Id</th>
				<th>Nama</th>
				<th>email</th>
				<th>no telpon</th>
				<th>Alamat</th>
				<th>opsi</th>
			</tr>
		<?php 
		$no = 1;
		foreach ($hasil as $h){ 
			?>
		<tr>
			<td><?php echo $no++ ?></td>
			<td><?php echo $h['m_nama'] ?></td>
			<td><?php echo $h['m_email'] ?></td>
			<td><?php echo $h['m_no_tlp'] ?></td>
			<td><?php echo $h['m_alamat'] ?></td>
			<td>
				<a href="jadi">Konfirmasi</a>
			</td>
			
			
		</tr>
	<?php   }?>


</table