<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class ScoreNotification extends Notification
{
    use Queueable;

    protected $score;

    protected $status;

    /**
     * Create a new notification instance.
     */
    public function __construct($score, $status)
    {
        $this->score = $score;
        $this->status = $status;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @return array<int, string>
     */
    public function via(object $notifiable): array
    {
        return $notifiable->prefers_sms ? ['sms'] : ['mail', 'database'];
    }

    /**
     * Get the mail representation of the notification.
     */
    public function toMail(object $notifiable): MailMessage
    {
        return (new MailMessage)
            ->greeting('Hello!')
            ->salutation('This is your assignment score notification.')
            ->line('Your score is ' . $this->score)
            ->action('Check Score', url('/'))
            ->line('Thank you for using our application!');
    }

    /**
     * Get the array representation of the notification.
     *
     * @return array<string, mixed>
     */
    public function toArray(object $notifiable): array
    {
        return [
            'score' => $this->score,
            'status' => $this->status,
        ];
    }
}
