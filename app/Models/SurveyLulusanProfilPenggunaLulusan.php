<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SurveyLulusanProfilPenggunaLulusan extends Model
{
    use HasFactory;
    protected $table = 'survey_lulusan_profil_pengguna_lulusan';
    protected $fillable = [
        'no',
        'survey',
        'pilihan',
        'ganda',
        'other',
        'wajib'
    ];
}
