<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SurveyAlumniLanjutPendidikan extends Model
{
    use HasFactory;
    protected $table = 'survey_alumni_lanjut_pendidikan';
    protected $fillable = [
        'no',
        'survey',
        'pilihan',
        'ganda',
        'other',
        'wajib'
    ];
}
