<?php include "koneksi.php";
$kp=$_GET['kode_pinjam'];
$g=mysqli_fetch_array(mysqli_query($koneksi,"select * from meminjam where kode_pinjam='$kp'"));
?>
<body onload="window.print()" style="line-height: 1.6;">
<div align="center">
<table style="font-family: calibri;">
	<tr>
		<td align="center" style="font-size: 14pt;"><b>SURAT PERSETUJUAN PEMINJAMAN</b></td>
	</tr>
	<tr>
		<td align="center" style="font-size: 14pt;"><p style="text-decoration: underline;"><b>No. : <?=$kp."/2/".date("m/Y");?></b></p></td>
	</tr>
	
</table>
</div>
<div align="left" style="margin-top:20px; ">
	<table style="font-size: 12pt; font-family: calibri;">
		<tr>
			<td align="left" colspan="2">
				<p style="text-align:justify;">
					Berdasarkan Surat Permohonan Peminjaman dengan No. : <?=$kp."/1/".date("m/Y");?>. Dengan rincian permohonan sebagai berikut :					
				</p>
			</td>
		</tr>
		<tr>
			<td width="150">Nama Peminjam</td><td>: <?=$g['nama_peminjam'];?></td>
		</tr>
		<tr>
			<td width="150">Instansi</td><td>:  <?=$g['instansi_peminjam'];?></td>
		</tr>
		<tr>
			<td width="150">Ruangan</td><td>:  <?=$g['nama_ruang'];?></td>
		</tr>
		<tr>
			<td width="150">Kegiatan</td><td>:  <?=$g['nama_kegiatan'];?></td>
		</tr>
		<tr>
			<td width="150">Waktu Peminjaman</td><td>:  <?=$g['start_date'];?> s/d <?=$g['end_date'];?> </td>
		</tr>
		<tr>
			<td colspan="2"><p style="text-align:justify">Bersama surat ini kami menyatakan <b>SETUJU</b> untuk memberikan peminjaman ruangan tersebut di atas. Berikut kami sampaikan hal-hal yang harus diperhatikan :</p></td>
		</tr>
		<tr>
			<td colspan="2">
				<ol>
					<li>Pastikan kondisi ruangan sebelum dan sesudah digunakan dalam keadaan bersih dan rapi.</li>
					<li>Setelah menggunakan ruangan dan peralatan pastikan dalam posisi tidak menyala.</li>
					<li>Kerusakan dan keteledoran yang terjadi saat peminjaman merupakan tanggung jawab peminjam ruangan.</li>
				</ol>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				Demikian surat ini dibuat untuk dapat digunakan sebagaimana mestinya. Atas perhatiannya kami ucapkan terima kasih.
			</td>
		</tr>
	</table>
</div>
<div align="center" style="margin-top:20px; ">
	<table style="font-size: 12pt; font-family: calibri;" width="100%">
		<tr>
			<td align="center">
				<p style="text-align:justify;">
					<br><br>
					Menyetujui<br>
					Kepala Unit Teknologi Informasi<br><br><br><br>
					Betty Andiyarti, S.Kom., MPH.
				</p>
			</td>
			<td align="center">
				<p style="text-align:justify;">
					Bengkulu, <?=date('d M Y');?><br>
					<br><br>Peminjam
					<br><br><br><br>
					<?=$g['nama_peminjam'];?>
				</p>
			</td>
		</tr>
	</table>
</div>
</body>