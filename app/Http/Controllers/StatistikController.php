<?php

namespace App\Http\Controllers;

use App\Models\BankAlumni;
use App\Models\UserAlumni;
use App\Models\BankLulusan;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use function PHPUnit\Framework\isEmpty;
use function PHPUnit\Framework\isNan;
use function PHPUnit\Framework\isNull;

class StatistikController extends Controller
{
    public function statistikProdi(UserAlumni $userAlumni, $prodi)
    {
        foreach (UserAlumni::get('angkatan')->unique('angkatan') as $d) {
            $tahun[] = $d->angkatan;
        }

        foreach ($tahun as $key) {
            $angkatan[$key] = UserAlumni::where('prodi', $prodi)->where('angkatan', $key)->where('tahun_akademik', 'Genap')->count();
            // $angkatan[$key] = UserAlumni::where('prodi', $prodi)->where('angkatan', $key)->count();
            $angkatan_mengisi[$key] = UserAlumni::where('prodi', $prodi)->where('angkatan', $key)->where('tahun_akademik', 'Ganjil')->count();
            // $angkatan_mengisi[$key] = BankAlumni::where('prodi', $prodi)->where('angkatan', $key)->count();
        }
        return (response()->json(['angkatan' => $angkatan, 'angkatan_mengisi' => $angkatan_mengisi]));
    }
    public function statistikLulusan(BankLulusan $bankLulusan, $prodi)
    {
        $lulusan = BankLulusan::where('bank38', $prodi)->get('bank38');

        return response()->json($lulusan);
    }
    public function diagram(BankAlumni $BankAlumni, $kategori, $prodi)
    {
        $hit = BankLulusan::count();

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
            foreach (BankAlumni::where('kategori', 'Sudah Bekerja')->orWhere('kategori', 'Berwirausaha')->get(['sudah_bekerja12', 'berwirausaha8'])->unique('berwirausaha8', 'sudah_bekerja12') as $r) {
                if (!empty($r->sudah_bekerja12)) {
                    if ($r->sudah_bekerja12 == 'Ya') {
                        $sb[] = $r->sudah_bekerja12;
                        $count_y[] = BankAlumni::where('sudah_bekerja12', 'Ya')->count();
                    } elseif (($r->sudah_bekerja12 == 'Tidak')) {
                        $sb[] = $r->sudah_bekerja12;
                        $count_t[] = BankAlumni::where('sudah_bekerja12', 'Tidak')->count();
                    }
                } elseif (!empty($r->berwirausaha8)) {
                    if ($r->berwirausaha8 == 'Ya') {
                        $bw[] = $r->berwirausaha8;
                        $count_y[] = BankAlumni::where('berwirausaha8', 'Ya')->count();
                    } elseif (($r->berwirausaha8 == 'Tidak')) {
                        $bw[] = $r->berwirausaha8;
                        $count_t[] = BankAlumni::where('berwirausaha8', 'Tidak')->count();
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
        } elseif ($kategori == 'aspek_integritas') {
            // } elseif ($kategori == 'aspek_integritas' && $prodi == 'lulusan') {
            //jangan lupa lihat $hit di atas
            for ($i = 9; $i < 16; $i++) {
                $bank = BankLulusan::get('bank' . $i);
                if (empty($bank->contains('bank' . $i, '4'))) {
                    $item_4[$i] = 0;
                } else {
                    $item_4[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 4)->count() / $hit * 100, 2);
                }
                if (empty($bank->contains('bank' . $i, '3'))) {
                    $item_3[$i] = 0;
                } else {
                    $item_3[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 3)->count() / $hit * 100, 2);
                }
                if (empty($bank->contains('bank' . $i, '2'))) {
                    $item_2[$i] = 0;
                } else {
                    $item_2[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 2)->count() / $hit * 100, 2);
                }
                if (empty($bank->contains('bank' . $i, '1'))) {
                    $item_1[$i] = 0;
                } else {
                    $item_1[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 1)->count() / $hit * 100, 2);
                }
                $nilai[] = [$item_4[$i], $item_3[$i], $item_2[$i], $item_1[$i]];
            }

            foreach ($nilai as $p) {
                $nilai_sangat_baik[] = $p[0];
                $nilai_baik[] = $p[1];
                $nilai_cukup_baik[] = $p[2];
                $nilai_kurang_baik[] = $p[3];
            }
            $sangat_baik = array_sum($nilai_sangat_baik) / count($nilai_sangat_baik);
            $baik = array_sum($nilai_baik) / count($nilai_baik);
            $cukup_baik = array_sum($nilai_cukup_baik) / count($nilai_cukup_baik);
            $kurang_baik = array_sum($nilai_kurang_baik) / count($nilai_kurang_baik);

            $aspek_integritas = ['Sangat Baik', 'Baik', 'Cukup Baik', 'Kurang Baik'];
            $count_aspek_integritas = [number_format($sangat_baik, 2), number_format($baik, 2), number_format($cukup_baik, 2), number_format($kurang_baik, 2)];
            return response()->json(['aspek_integritas' => $aspek_integritas, 'count_aspek_integritas' => $count_aspek_integritas]);
        } elseif ($kategori == 'aspek_profesionalisme') {
            //jangan lupa lihat $hit di atas
            for ($i = 16; $i < 21; $i++) {
                $bank = BankLulusan::get('bank' . $i);
                if (empty($bank->contains('bank' . $i, '4'))) {
                    $item_4[$i] = 0;
                } else {
                    $item_4[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 4)->count() / $hit * 100, 2);
                }
                if (empty($bank->contains('bank' . $i, '3'))) {
                    $item_3[$i] = 0;
                } else {
                    $item_3[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 3)->count() / $hit * 100, 2);
                }
                if (empty($bank->contains('bank' . $i, '2'))) {
                    $item_2[$i] = 0;
                } else {
                    $item_2[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 2)->count() / $hit * 100, 2);
                }
                if (empty($bank->contains('bank' . $i, '1'))) {
                    $item_1[$i] = 0;
                } else {
                    $item_1[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 1)->count() / $hit * 100, 2);
                }
                $nilai[] = [$item_4[$i], $item_3[$i], $item_2[$i], $item_1[$i]];
            }

            foreach ($nilai as $p) {
                $nilai_sangat_baik[] = $p[0];
                $nilai_baik[] = $p[1];
                $nilai_cukup_baik[] = $p[2];
                $nilai_kurang_baik[] = $p[3];
            }
            $sangat_baik = array_sum($nilai_sangat_baik) / count($nilai_sangat_baik);
            $baik = array_sum($nilai_baik) / count($nilai_baik);
            $cukup_baik = array_sum($nilai_cukup_baik) / count($nilai_cukup_baik);
            $kurang_baik = array_sum($nilai_kurang_baik) / count($nilai_kurang_baik);

            $aspek_profesionalisme = ['Sangat Baik', 'Baik', 'Cukup Baik', 'Kurang Baik'];
            $count_aspek_profesionalisme = [number_format($sangat_baik, 2), number_format($baik, 2), number_format($cukup_baik, 2), number_format($kurang_baik, 2)];
            return response()->json(['aspek_profesionalisme' => $aspek_profesionalisme, 'count_aspek_profesionalisme' => $count_aspek_profesionalisme]);
        } elseif ($kategori == 'aspek_berbahasa_asing') {
            //jangan lupa lihat $hit di atas
            for ($i = 21; $i < 24; $i++) {
                $bank = BankLulusan::get('bank' . $i);
                if (empty($bank->contains('bank' . $i, '4'))) {
                    $item_4[$i] = 0;
                } else {
                    $item_4[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 4)->count() / $hit * 100, 2);
                }
                if (empty($bank->contains('bank' . $i, '3'))) {
                    $item_3[$i] = 0;
                } else {
                    $item_3[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 3)->count() / $hit * 100, 2);
                }
                if (empty($bank->contains('bank' . $i, '2'))) {
                    $item_2[$i] = 0;
                } else {
                    $item_2[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 2)->count() / $hit * 100, 2);
                }
                if (empty($bank->contains('bank' . $i, '1'))) {
                    $item_1[$i] = 0;
                } else {
                    $item_1[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 1)->count() / $hit * 100, 2);
                }
                $nilai[] = [$item_4[$i], $item_3[$i], $item_2[$i], $item_1[$i]];
            }

            foreach ($nilai as $p) {
                $nilai_sangat_baik[] = $p[0];
                $nilai_baik[] = $p[1];
                $nilai_cukup_baik[] = $p[2];
                $nilai_kurang_baik[] = $p[3];
            }
            $sangat_baik = array_sum($nilai_sangat_baik) / count($nilai_sangat_baik);
            $baik = array_sum($nilai_baik) / count($nilai_baik);
            $cukup_baik = array_sum($nilai_cukup_baik) / count($nilai_cukup_baik);
            $kurang_baik = array_sum($nilai_kurang_baik) / count($nilai_kurang_baik);

            $aspek_berbahasa_asing = ['Sangat Baik', 'Baik', 'Cukup Baik', 'Kurang Baik'];
            $count_aspek_berbahasa_asing = [number_format($sangat_baik, 2), number_format($baik, 2), number_format($cukup_baik, 2), number_format($kurang_baik, 2)];
            return response()->json(['aspek_berbahasa_asing' => $aspek_berbahasa_asing, 'count_aspek_berbahasa_asing' => $count_aspek_berbahasa_asing]);
        } elseif ($kategori == 'aspek_penggunaan_teknologi') {
            //jangan lupa lihat $hit di atas
            for ($i = 24; $i < 27; $i++) {
                $bank = BankLulusan::get('bank' . $i);
                if (empty($bank->contains('bank' . $i, '4'))) {
                    $item_4[$i] = 0;
                } else {
                    $item_4[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 4)->count() / $hit * 100, 2);
                }
                if (empty($bank->contains('bank' . $i, '3'))) {
                    $item_3[$i] = 0;
                } else {
                    $item_3[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 3)->count() / $hit * 100, 2);
                }
                if (empty($bank->contains('bank' . $i, '2'))) {
                    $item_2[$i] = 0;
                } else {
                    $item_2[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 2)->count() / $hit * 100, 2);
                }
                if (empty($bank->contains('bank' . $i, '1'))) {
                    $item_1[$i] = 0;
                } else {
                    $item_1[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 1)->count() / $hit * 100, 2);
                }
                $nilai[] = [$item_4[$i], $item_3[$i], $item_2[$i], $item_1[$i]];
            }

            foreach ($nilai as $p) {
                $nilai_sangat_baik[] = $p[0];
                $nilai_baik[] = $p[1];
                $nilai_cukup_baik[] = $p[2];
                $nilai_kurang_baik[] = $p[3];
            }
            $sangat_baik = array_sum($nilai_sangat_baik) / count($nilai_sangat_baik);
            $baik = array_sum($nilai_baik) / count($nilai_baik);
            $cukup_baik = array_sum($nilai_cukup_baik) / count($nilai_cukup_baik);
            $kurang_baik = array_sum($nilai_kurang_baik) / count($nilai_kurang_baik);

            $aspek_penggunaan_teknologi = ['Sangat Baik', 'Baik', 'Cukup Baik', 'Kurang Baik'];
            $count_aspek_penggunaan_teknologi = [number_format($sangat_baik, 2), number_format($baik, 2), number_format($cukup_baik, 2), number_format($kurang_baik, 2)];
            return response()->json(['aspek_penggunaan_teknologi' => $aspek_penggunaan_teknologi, 'count_aspek_penggunaan_teknologi' => $count_aspek_penggunaan_teknologi]);
        } elseif ($kategori == 'aspek_komunikasi') {
            //jangan lupa lihat $hit di atas
            for ($i = 27; $i < 32; $i++) {
                $bank = BankLulusan::get('bank' . $i);
                if (empty($bank->contains('bank' . $i, '4'))) {
                    $item_4[$i] = 0;
                } else {
                    $item_4[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 4)->count() / $hit * 100, 2);
                }
                if (empty($bank->contains('bank' . $i, '3'))) {
                    $item_3[$i] = 0;
                } else {
                    $item_3[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 3)->count() / $hit * 100, 2);
                }
                if (empty($bank->contains('bank' . $i, '2'))) {
                    $item_2[$i] = 0;
                } else {
                    $item_2[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 2)->count() / $hit * 100, 2);
                }
                if (empty($bank->contains('bank' . $i, '1'))) {
                    $item_1[$i] = 0;
                } else {
                    $item_1[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 1)->count() / $hit * 100, 2);
                }
                $nilai[] = [$item_4[$i], $item_3[$i], $item_2[$i], $item_1[$i]];
            }

            foreach ($nilai as $p) {
                $nilai_sangat_baik[] = $p[0];
                $nilai_baik[] = $p[1];
                $nilai_cukup_baik[] = $p[2];
                $nilai_kurang_baik[] = $p[3];
            }
            $sangat_baik = array_sum($nilai_sangat_baik) / count($nilai_sangat_baik);
            $baik = array_sum($nilai_baik) / count($nilai_baik);
            $cukup_baik = array_sum($nilai_cukup_baik) / count($nilai_cukup_baik);
            $kurang_baik = array_sum($nilai_kurang_baik) / count($nilai_kurang_baik);

            $aspek_komunikasi = ['Sangat Baik', 'Baik', 'Cukup Baik', 'Kurang Baik'];
            $count_aspek_komunikasi = [number_format($sangat_baik, 2), number_format($baik, 2), number_format($cukup_baik, 2), number_format($kurang_baik, 2)];
            return response()->json(['aspek_komunikasi' => $aspek_komunikasi, 'count_aspek_komunikasi' => $count_aspek_komunikasi]);
        } elseif ($kategori == 'aspek_kerjasama') {
            //jangan lupa lihat $hit di atas
            for ($i = 32; $i < 35; $i++) {
                $bank = BankLulusan::get('bank' . $i);
                if (empty($bank->contains('bank' . $i, '4'))) {
                    $item_4[$i] = 0;
                } else {
                    $item_4[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 4)->count() / $hit * 100, 2);
                }
                if (empty($bank->contains('bank' . $i, '3'))) {
                    $item_3[$i] = 0;
                } else {
                    $item_3[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 3)->count() / $hit * 100, 2);
                }
                if (empty($bank->contains('bank' . $i, '2'))) {
                    $item_2[$i] = 0;
                } else {
                    $item_2[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 2)->count() / $hit * 100, 2);
                }
                if (empty($bank->contains('bank' . $i, '1'))) {
                    $item_1[$i] = 0;
                } else {
                    $item_1[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 1)->count() / $hit * 100, 2);
                }
                $nilai[] = [$item_4[$i], $item_3[$i], $item_2[$i], $item_1[$i]];
            }

            foreach ($nilai as $p) {
                $nilai_sangat_baik[] = $p[0];
                $nilai_baik[] = $p[1];
                $nilai_cukup_baik[] = $p[2];
                $nilai_kurang_baik[] = $p[3];
            }
            $sangat_baik = array_sum($nilai_sangat_baik) / count($nilai_sangat_baik);
            $baik = array_sum($nilai_baik) / count($nilai_baik);
            $cukup_baik = array_sum($nilai_cukup_baik) / count($nilai_cukup_baik);
            $kurang_baik = array_sum($nilai_kurang_baik) / count($nilai_kurang_baik);

            $aspek_kerjasama = ['Sangat Baik', 'Baik', 'Cukup Baik', 'Kurang Baik'];
            $count_aspek_kerjasama = [number_format($sangat_baik, 2), number_format($baik, 2), number_format($cukup_baik, 2), number_format($kurang_baik, 2)];
            return response()->json(['aspek_kerjasama' => $aspek_kerjasama, 'count_aspek_kerjasama' => $count_aspek_kerjasama]);
        } elseif ($kategori == 'aspek_pengembangan_diri') {
            //jangan lupa lihat $hit di atas
            for ($i = 35; $i < 37; $i++) {
                $bank = BankLulusan::get('bank' . $i);
                if (empty($bank->contains('bank' . $i, '4'))) {
                    $item_4[$i] = 0;
                } else {
                    $item_4[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 4)->count() / $hit * 100, 2);
                }
                if (empty($bank->contains('bank' . $i, '3'))) {
                    $item_3[$i] = 0;
                } else {
                    $item_3[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 3)->count() / $hit * 100, 2);
                }
                if (empty($bank->contains('bank' . $i, '2'))) {
                    $item_2[$i] = 0;
                } else {
                    $item_2[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 2)->count() / $hit * 100, 2);
                }
                if (empty($bank->contains('bank' . $i, '1'))) {
                    $item_1[$i] = 0;
                } else {
                    $item_1[$i] = number_format(BankLulusan::where('bank38', $prodi)->where('bank' . $i, 1)->count() / $hit * 100, 2);
                }
                $nilai[] = [$item_4[$i], $item_3[$i], $item_2[$i], $item_1[$i]];
            }

            foreach ($nilai as $p) {
                $nilai_sangat_baik[] = $p[0];
                $nilai_baik[] = $p[1];
                $nilai_cukup_baik[] = $p[2];
                $nilai_kurang_baik[] = $p[3];
            }
            $sangat_baik = array_sum($nilai_sangat_baik) / count($nilai_sangat_baik);
            $baik = array_sum($nilai_baik) / count($nilai_baik);
            $cukup_baik = array_sum($nilai_cukup_baik) / count($nilai_cukup_baik);
            $kurang_baik = array_sum($nilai_kurang_baik) / count($nilai_kurang_baik);

            $aspek_pengembangan_diri = ['Sangat Baik', 'Baik', 'Cukup Baik', 'Kurang Baik'];
            $count_aspek_pengembangan_diri = [number_format($sangat_baik, 2), number_format($baik, 2), number_format($cukup_baik, 2), number_format($kurang_baik, 2)];
            return response()->json(['aspek_pengembangan_diri' => $aspek_pengembangan_diri, 'count_aspek_pengembangan_diri' => $count_aspek_pengembangan_diri]);
        }
    }
}
