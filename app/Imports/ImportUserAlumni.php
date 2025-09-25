<?php

namespace App\Imports;

use App\Models\UserAlumni;
use Maatwebsite\Excel\Concerns\ToModel;

class ImportUserAlumni implements ToModel
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function model(array $row)
    {
        $prodi_list = ['D3 Farmasi', 'D3 TLM', 'S1 ARS', 'S1 Farmasi', 'S1 Ilmu Giz', 'S1 Ilmu Hukum', 'S1 Manajemen', 'S1 PGSD', 'Profesi Apoteker'];
        if (in_array($row[3], $prodi_list)) {
            $prodi = $row[3];
        } else {
            $prodi = 'tidak ditemukan';
        }

        return [
            0 => new UserAlumni([
                'nik' => $row[0],
                'nama' => strtoupper($row[1]),
                'nim' => strtoupper($row[2]),
                'prodi' => $prodi,
                'angkatan' => (int) $row[4],
                'periode' => $row[5],
                'tahun_akademik' => $row[6],
            ]),
        ];
    }
}
