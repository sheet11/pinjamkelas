<?php include "koneksi.php";
$kp=$_GET['kode_pinjam'];
$g=mysqli_fetch_array(mysqli_query($koneksi,"select * from meminjam where kode_pinjam='$kp'"));
?>
<body onload="window.print()" style="line-height: 1.6;">
<div align="center">
<table style="font-family: calibri;">
	<tr>
		<td align="center" style="font-size: 14pt;"><b>SURAT PERMOHONAN PEMINJAMAN</b></td>
	</tr>
	<tr>
		<td align="center" style="font-size: 14pt;"><p style="text-decoration: underline;"><b>No. : <?=$kp."/1/".date("m/Y");?></b></p></td>
	</tr>
	
</table>
</div>
<div align="left" style="margin-top:20px; ">
	<table style="font-size: 12pt; font-family: calibri;">
		<tr>
			<td align="left" colspan="2">
				<p style="text-align:justify;">
					Yang bertandatangan di bawah ini :
				</p>
			</td>
		</tr>
		<tr>
			<td width="150">Nama Lengkap</td><td>: <?=$g['nama_peminjam'];?></td>
		</tr>
		<tr>
			<td width="150">Instansi</td><td>:  <?=$g['instansi_peminjam'];?></td>
		</tr>
		<tr>
			<td colspan="2"><p style="text-align:justify">Dengan ini bermaksud untuk mengajukan permohonan peminjaman ruangan <b> <?=$g['nama_ruang'];?></b> untuk kegiatan <b> <?=$g['nama_kegiatan'];?></b> yang akan diselenggarakan pada <b> <?=$g['start_date'];?></b> sampai dengan <b> <?=$g['end_date'];?></b>.</p></td>
		</tr>
		<tr>
			<td colspan="2">
				Demikian surat ini dibuat dengan sebenarnya. Atas perhatiannya kami ucapkan terima kasih.
			</td>
		</tr>
	</table>
</div>
<div align="right" style="margin-top:20px; ">
	<table style="font-size: 12pt; font-family: calibri;">
		<tr>
			<td align="right">
				<p style="text-align:justify;">
					Bengkulu, <?=date('d M Y');?><br>
					Peminjam
					<br><br><br><br>
					<?=$g['nama_peminjam'];?>
				</p>
			</td>
		</tr>
	</table>
</div>
</body>