<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Mail\Mailable;
use Illuminate\Mail\Mailables\Content;
use Illuminate\Mail\Mailables\Envelope;
use Illuminate\Queue\SerializesModels;
use Illuminate\Mail\Mailables\Attachment;

class JobApplicationMail extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */

    public $data;
    
    protected $resumePath;

    public function __construct($data, $resumePath = null)
    {
        $this->data = $data;
        $this->resumePath = $resumePath;
    }

    /**
     * Get the message envelope.
     *
     * @return \Illuminate\Mail\Mailables\Envelope
     */
    public function envelope()
    {
        return new Envelope(
            subject: 'Job Application Enquiry',
        );
    }

    /**
     * Get the message content definition.
     *
     * @return \Illuminate\Mail\Mailables\Content
     */
    public function content()
    {
        return new Content(
            view: 'job-email-temp',
            with: ['data' => $this->data]
        );
    }
    
    /**
     * Get the attachments for the message.
     *
     * @return array
     */
    public function attachments()
    {
        if ($this->resumePath && file_exists($this->resumePath)) {
            return [
                Attachment::fromPath($this->resumePath)
                    ->as(basename($this->resumePath))
                    ->withMime('application/pdf'), // or detect dynamically
            ];
        }

        return [];
    }
}
