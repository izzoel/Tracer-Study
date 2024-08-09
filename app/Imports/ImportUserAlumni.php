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
        $prodi_list = [
            'D3 Farmasi',
            'D3 TLM',
            'S1 ARS',
            'S1 Farmasi',
            'S1 Ilmu Giz',
            'S1 Ilmu Hukum',
            'S1 Manajemen',
            'S1 PGSD',
            'Profesi Apoteker'

        ];
        if (in_array($row[2], $prodi_list)) {
            $prodi = $row[2];
        } else {
            $prodi = 'tidak ditemukan';
        }

        return
            [
                0 => new UserAlumni([
                    'nama' => strtoupper($row[0]),
                    'nim' => strtoupper($row[1]),
                    'prodi' => $prodi,
                    'angkatan' => (int)$row[3],
                    'tahun_akademik' => $row[4]
                ])
            ];
    }
}
