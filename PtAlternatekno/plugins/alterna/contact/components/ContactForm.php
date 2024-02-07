<?php namespace alterna\Contact\Components;

use Cms\Classes\ComponentBase;
use Illuminate\Support\Facades\Mail;

class ContactForm extends ComponentBase
{
    public function componentDetails()
    {
        return [
            'name' => 'Contact Form',
            'description' => 'Simple contact form'
        ];
    }

    public function onSend()
    {
        $vars = [
            'name' => post('name'),
            'email' => post('email'),
            'content' => post('message')
        ];

        Mail::send('alterna.contact::mail.message', $vars, function($message) {
            $message->to('fyroocode@gmail.com');
            $message->subject('New message from contact form');
        });
    }
}