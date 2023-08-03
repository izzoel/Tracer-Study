<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;
use Illuminate\Http\Request;

use App\Models\UserAlumni;
use App\Models\BankAlumni;

class SendMail extends Mailable
{
    use Queueable, SerializesModels;
    public $data_email;
    public $data_survey;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    // public function __construct($bookhdr)
    public function __construct($data_email, $data_survey)
    {
        $this->data_email = $data_email;
        $this->data_survey = $data_survey;
    }

    /**
     * Get the message envelope.
     *
     * @return \Illuminate\Mail\Mailables\Envelope
     */
    public function envelope()
    {
        return new Envelope(
            subject: 'Hasil Pengisian Survey',
        );
    }

    /**
     * Get the message content definition.
     *
     * @return \Illuminate\Mail\Mailables\Content
     */
    public function content()
    {
        // dd($testMailDat);
        return new Content(
            markdown: 'email.testMail',
            // view: 'email.testMail',
            // with: [
            //     'title' => 'form',
            //     // 'nama' => $request->input('nama'),
            //     // 'nim' => $request->input('nim'),
            //     // 'prodi' => $request->input('prodi'),
            // ]
        );

        // return view('survey.alumni', ['title' => 'form_alumni'])->with([
        //     'title' => 'form',
        //     'nama' => $request->input('nama'),
        //     'nim' => $request->input('nim'),
        //     'prodi' => $request->input('prodi'),
        //     'kategori' => ucwords(str_replace('_', ' ', $karir)),
        //     'angkatan' => UserAlumni::where('nim',  $request->input('nim'))->pluck('angkatan')->first(),
        //     'karir' => $karir
        // ]);

        // return $this->markdown('email.testMail');
    }

    /**
     * Get the attachments for the message.
     *
     * @return array
     */
    public function attachments()
    {
        return [];
    }
}
