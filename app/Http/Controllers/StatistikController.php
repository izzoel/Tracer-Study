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
    public function diagram(BankAlumni $BankAlumni, $kategori)
    {
        if ($kategori == 'kategori') {
            foreach (BankAlumni::get('kategori')->unique('kategori') as $d) {
                $kategori_kegiatan_lulus[] = $d->kategori;
                $count_kategori[] = BankAlumni::where('kategori', $d->kategori)->count();
            }
            return response()->json(['kategori' => $kategori_kegiatan_lulus, 'count_kategori' => $count_kategori]);
        } elseif ($kategori == 'tempat_kerja') {
            foreach (BankAlumni::where('kategori', 'Sudah Bekerja')->orWhere('kategori', 'Berwirausaha')->get(['sudah_bekerja1', 'berwirausaha1'])->unique('berwirausaha1', 'sudah_bekerja1') as $ap) {
                if ($ap->sudah_bekerja1 != null) {
                    $sb[] = $ap->sudah_bekerja1;
                    $count_sb[] = BankAlumni::where('sudah_bekerja1', $ap->sudah_bekerja1)->count();
                } elseif ($ap->berwirausaha1 != null) {
                    $bw[] = $ap->berwirausaha1;
                    $count_bw[] = BankAlumni::where('berwirausaha1', $ap->berwirausaha1)->count();
                }
            }
            $tempat_kerja = array_merge($sb, $bw);
            $count_tempat_kerja = array_merge($count_sb, $count_bw);
            return response()->json(['tempat_kerja' => $tempat_kerja, 'count_tempat_kerja' => $count_tempat_kerja]);
        } elseif ($kategori == 'informasi_lowongan') {
            foreach (BankAlumni::where('kategori', 'Sudah Bekerja')->orWhere('kategori', 'Berwirausaha')->get(['sudah_bekerja13', 'berwirausaha13'])->unique('berwirausaha13', 'sudah_bekerja13') as $a) {
                if ($a->sudah_bekerja13 != null) {
                    $sb[] = $a->sudah_bekerja13;
                    $count_sb[] = BankAlumni::where('sudah_bekerja13', $a->sudah_bekerja13)->count();
                } elseif ($a->berwirausaha13 != null) {
                    $bw[] = $a->berwirausaha13;
                    $count_bw[] = BankAlumni::where('berwirausaha13', $a->berwirausaha13)->count();
                }
            }
            $informasi_lowongan_pekerjaan = array_merge($sb, $bw);
            $count_informasi_lowongan_pekerjaan = array_merge($count_sb, $count_bw);
            return response()->json(['informasi_lowongan_pekerjaan' => $informasi_lowongan_pekerjaan, 'count_informasi_lowongan_pekerjaan' => $count_informasi_lowongan_pekerjaan]);
        } elseif ($kategori == 'masa_tunggu_pekerjaan') {
            foreach (BankAlumni::where('kategori', 'Belum Bekerja')->get('alumni11')->unique('alumni11') as $d) {
                $bb[] = $d->alumni11;




                $count_bb[] = BankAlumni::where('alumni11', $d->alumni11)->count();
                // $count_bb[$d];
                // $angkatan_mengisi[$key] = BankAlumni::where('prodi', $prodi)->where('angkatan', $key)->count();
                // $dt[] = $d->alumni11;
            }

            // foreach ($count_bb as $key) {
            //     $angkatan[$key] = UserAlumni::where('prodi', $prodi)->where('angkatan', $key)->count();
            //     $angkatan_mengisi[$key] = BankAlumni::where('prodi', $prodi)->where('angkatan', $key)->count();
            // }
            // return response()->json(['label' => $dt]);
            // return ['label' => "\\u2264 3 bulan"];
            // return response()->json(['label' => "\u2264 3 bulan"]);
            return response()->json(['masa_tunggu_pekerjaan' => $bb, 'count_masa_tunggu_pekerjaan' => $count_bb]);
        } elseif ($kategori == 'relevansi_pekerjaan') {
            foreach (BankAlumni::where('kategori', 'Sudah Bekerja')->orWhere('kategori', 'Berwirausaha')->get(['sudah_bekerja12', 'berwirausaha12'])->unique('berwirausaha12', 'sudah_bekerja12') as $r) {
                if (!empty($r->sudah_bekerja12)) {
                    // $sb[] = $r->sudah_bekerja12;
                    // $count_sb[] = BankAlumni::where('sudah_bekerja12', $r->sudah_bekerja12)->count();
                    if ($r->sudah_bekerja12 == 'Ya') {
                        # code...
                        $sb[] = $r->sudah_bekerja12;
                        $count_y[] = BankAlumni::where('sudah_bekerja12', 'Ya')->count();
                    } elseif (($r->sudah_bekerja12 == 'Tidak')) {
                        $sb[] = $r->sudah_bekerja12;
                        $count_t[] = BankAlumni::where('sudah_bekerja12', 'Tidak')->count();
                    }
                }
                // elseif ($r->berwirausaha12 != null) {
                //     $bw[] = $r->berwirausaha12;
                //     $count_bw[] = BankAlumni::where('berwirausaha12', $r->berwirausaha12)->count();
                // }
                elseif (!empty($r->berwirausaha12)) {
                    if ($r->berwirausaha12 == 'Ya') {
                        # code...
                        $bw[] = $r->berwirausaha12;
                        $count_y[] = BankAlumni::where('berwirausaha12', 'Ya')->count();
                    } elseif (($r->berwirausaha12 == 'Tidak')) {
                        $bw[] = $r->berwirausaha12;
                        $count_t[] = BankAlumni::where('berwirausaha12', 'Tidak')->count();
                    }
                }

                // if ($r->sudah_bekerja12 != null || $r->berwirausaha12 != null) {
                //     $sb[] = $r->sudah_bekerja12;
                //     $count_sb[] = BankAlumni::where('sudah_bekerja12', $r->sudah_bekerja12)->count();
                // }



                //  elseif ($r->berwirausaha12 == 'Ya') {
                //     $bw[] = $r->berwirausaha12;
                //     $count_bw[] = BankAlumni::where('berwirausaha12', $r->berwirausaha12)->count();
                // }
            }
            // dd($bw);
            // return $sb;
            $sum_y[] = array_sum($count_y);
            $sum_t[] = array_sum($count_t);
            // dd(array_sum($count_y));
            $relevansi_pekerjaan = array_unique(array_merge($sb, $bw));
            $w = array_unique(array_merge($relevansi_pekerjaan));
            // // dd($w)
            $count_relevansi_pekerjaan = array_merge($sum_y, $sum_t);
            // $count_relevansi_pekerjaan = array_merge($count_sb, $count_bw);
            // $count_relevansi_pekerjaan = array_unique(array_merge($count_sb, $count_bw));
            // return response()->json(['relevansi_pekerjaan' => $relevansi_pekerjaan, 'count_relevansi_pekerjaan' => $count_relevansi_pekerjaan]);
            // return response()->json(['relevansi_pekerjaan' => $w, 'count_relevansi_pekerjaan' => $count_relevansi_pekerjaan]);
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
