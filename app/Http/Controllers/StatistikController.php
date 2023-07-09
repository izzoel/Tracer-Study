<?php

namespace App\Http\Controllers;

use App\Models\BankAlumni;
use App\Models\UserAlumni;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class StatistikController extends Controller
{
    public function statistikProdi(UserAlumni $userAlumni, $prodi)
    {
        foreach (UserAlumni::get('angkatan')->unique('angkatan') as $d) {
            $tahun[] = $d->angkatan;
        }

        foreach ($tahun as $key) {
            $angkatan[$key] = UserAlumni::where('prodi', $prodi)->where('angkatan', $key)->count();
            $angkatan_mengisi[$key] = BankAlumni::where('prodi', $prodi)->where('angkatan', $key)->count();
        }
        return response()->json(['angkatan' => $angkatan, 'angkatan_mengisi' => $angkatan_mengisi]);
    }
    public function diagram(BankAlumni $BankAlumni, $kategori, $prodi)
    {
        if ($kategori == 'kategori') {
            foreach (BankAlumni::where('prodi', $prodi)->get('kategori') as $d) {
                $kategori_kegiatan_lulus[] = $d->kategori;
            }
            return response()->json(['kategori' => array_values(array_unique($kategori_kegiatan_lulus)), 'count_kategori' => array_values(array_count_values($kategori_kegiatan_lulus))]);
        } elseif ($kategori == 'tempat_kerja') {
            foreach (BankAlumni::where('prodi', $prodi)->get(['sudah_bekerja1', 'berwirausaha1']) as $ap) {
                if (!empty($ap->sudah_bekerja1)) {
                    $tempat[] = $ap->sudah_bekerja1;
                } elseif (!empty($ap->berwirausaha1)) {
                    $tempat[] = $ap->berwirausaha1;
                }
            }
            return response()->json(['tempat_kerja' => array_values(array_unique($tempat)), 'count_tempat_kerja' => array_values(array_count_values($tempat))]);
        } elseif ($kategori == 'informasi_lowongan') {
            foreach (BankAlumni::where('prodi', $prodi)->get(['sudah_bekerja13', 'berwirausaha13']) as $ap) {
                if (!empty($ap->sudah_bekerja13)) {
                    $info[] = $ap->sudah_bekerja13;
                } elseif (!empty($ap->berwirausaha13)) {
                    $info[] = $ap->berwirausaha13;
                }
            }
            return response()->json(['informasi_lowongan_pekerjaan' => array_values(array_unique($info)), 'count_informasi_lowongan_pekerjaan' => array_values(array_count_values($info))]);
        } elseif ($kategori == 'masa_tunggu_pekerjaan') {
            foreach (BankAlumni::where('kategori', 'Belum Bekerja')->get('alumni11')->unique('alumni11') as $d) {
                $bb[] = $d->alumni11;
                $count_bb[] = BankAlumni::where('alumni11', $d->alumni11)->count();
            }
            return response()->json(['masa_tunggu_pekerjaan' => $bb, 'count_masa_tunggu_pekerjaan' => $count_bb]);
        } elseif ($kategori == 'relevansi_pekerjaan') {
            foreach (BankAlumni::where('kategori', 'Sudah Bekerja')->orWhere('kategori', 'Berwirausaha')->get(['sudah_bekerja12', 'berwirausaha12'])->unique('berwirausaha12', 'sudah_bekerja12') as $r) {
                if (!empty($r->sudah_bekerja12)) {
                    if ($r->sudah_bekerja12 == 'Ya') {
                        $sb[] = $r->sudah_bekerja12;
                        $count_y[] = BankAlumni::where('sudah_bekerja12', 'Ya')->count();
                    } elseif (($r->sudah_bekerja12 == 'Tidak')) {
                        $sb[] = $r->sudah_bekerja12;
                        $count_t[] = BankAlumni::where('sudah_bekerja12', 'Tidak')->count();
                    }
                } elseif (!empty($r->berwirausaha12)) {
                    if ($r->berwirausaha12 == 'Ya') {
                        # code...
                        $bw[] = $r->berwirausaha12;
                        $count_y[] = BankAlumni::where('berwirausaha12', 'Ya')->count();
                    } elseif (($r->berwirausaha12 == 'Tidak')) {
                        $bw[] = $r->berwirausaha12;
                        $count_t[] = BankAlumni::where('berwirausaha12', 'Tidak')->count();
                    }
                }
            }
            $sum_y[] = array_sum($count_y);
            $sum_t[] = array_sum($count_t);
            $relevansi_pekerjaan = array_unique(array_merge($sb, $bw));
            $w = array_unique(array_merge($relevansi_pekerjaan));
            $count_relevansi_pekerjaan = array_merge($sum_y, $sum_t);
            return response()->json(['relevansi_pekerjaan' => $w, 'count_relevansi_pekerjaan' => $count_relevansi_pekerjaan]);
        } elseif ($kategori == 'kegiatan_belum_bekerja') {
            foreach (BankAlumni::get('belum_bekerja1')->unique('belum_bekerja1') as $k) {
                if (!empty($k->belum_bekerja1)) {
                    $bb[] = $k->belum_bekerja1;
                    $count_kegiatan_belum_bekerja[] = BankAlumni::where('belum_bekerja1', $k->belum_bekerja1)->count();
                }
            }
            return response()->json(['kegiatan_belum_bekerja' => $bb, 'count_kegiatan_belum_bekerja' => $count_kegiatan_belum_bekerja]);
        }
    }
}
