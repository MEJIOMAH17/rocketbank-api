package ru.rocketbank.r2d2.activities;

import android.content.Context;
import android.content.Intent;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnInfoListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import android.os.Bundle;
import android.widget.MediaController;
import android.widget.ProgressBar;
import android.widget.Toast;
import android.widget.VideoView;
import ru.rocketbank.r2d2.C0859R;

public final class VideoActivity extends SecuredActivity {
    private static final String LINK = "link";
    private int position;
    private ProgressBar progressBar;
    private VideoView videoView;

    /* renamed from: ru.rocketbank.r2d2.activities.VideoActivity$1 */
    class C08731 implements OnPreparedListener {

        /* renamed from: ru.rocketbank.r2d2.activities.VideoActivity$1$1 */
        class C08691 implements OnCompletionListener {
            C08691() {
            }

            public void onCompletion(MediaPlayer mediaPlayer) {
                VideoActivity.this.position = 0;
                VideoActivity.this.videoView.seekTo(VideoActivity.this.position);
            }
        }

        /* renamed from: ru.rocketbank.r2d2.activities.VideoActivity$1$2 */
        class C08702 implements OnErrorListener {
            C08702() {
            }

            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                Toast.makeText(VideoActivity.this, C0859R.string.toast_video_error, 0).show();
                VideoActivity.this.finish();
                return true;
            }
        }

        /* renamed from: ru.rocketbank.r2d2.activities.VideoActivity$1$3 */
        class C08713 implements OnInfoListener {
            C08713() {
            }

            public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
                if (i == 702) {
                    VideoActivity.this.setProgress(false);
                } else if (i == 701) {
                    VideoActivity.this.setProgress(true);
                }
                if (i != 702) {
                    if (i != 701) {
                        return false;
                    }
                }
                return true;
            }
        }

        /* renamed from: ru.rocketbank.r2d2.activities.VideoActivity$1$4 */
        class C08724 implements OnVideoSizeChangedListener {
            C08724() {
            }

            public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
                mediaPlayer.start();
                VideoActivity.this.setProgress(0);
            }
        }

        C08731() {
        }

        public void onPrepared(MediaPlayer mediaPlayer) {
            mediaPlayer.start();
            mediaPlayer.setOnCompletionListener(new C08691());
            mediaPlayer.setOnErrorListener(new C08702());
            mediaPlayer.setOnInfoListener(new C08713());
            mediaPlayer.setOnVideoSizeChangedListener(new C08724());
        }
    }

    public static void start(Context context, String str) {
        context.startActivity(new Intent(context, VideoActivity.class).putExtra("link", str));
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) C0859R.layout.activity_video);
        this.progressBar = (ProgressBar) findViewById(C0859R.id.progressBar);
        this.videoView = (VideoView) findViewById(C0859R.id.videoView);
        this.videoView.setMediaController(new MediaController(this));
        this.videoView.setOnPreparedListener(new C08731());
        this.videoView.setVideoPath(getIntent().getStringExtra("link"));
    }

    protected final void onPause() {
        super.onPause();
        this.position = this.videoView.getCurrentPosition();
        this.videoView.pause();
    }

    protected final void onResume() {
        super.onResume();
        this.videoView.seekTo(this.position);
        this.videoView.start();
        setProgress(true);
    }

    private void setProgress(boolean z) {
        this.progressBar.animate().alpha(z ? true : false);
    }
}
