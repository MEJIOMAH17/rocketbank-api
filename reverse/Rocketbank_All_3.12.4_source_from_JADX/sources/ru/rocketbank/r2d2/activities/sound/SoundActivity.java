package ru.rocketbank.r2d2.activities.sound;

import android.content.Context;
import android.content.Intent;
import android.databinding.DataBindingUtil;
import android.databinding.ObservableBoolean;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Bundle;
import android.support.design.widget.BottomSheetBehavior;
import android.support.v4.content.ContextCompat;
import android.support.v7.appcompat.C0219R.style;
import android.view.LayoutInflater;
import android.view.View;
import com.nineoldandroids.animation.ObjectAnimator;
import com.nineoldandroids.animation.TypeEvaluator;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.api.UserApi;
import ru.rocketbank.core.network.model.PatchProfileBody;
import ru.rocketbank.core.utils.SoundNotification;
import ru.rocketbank.core.utils.SoundNotification.NotificationSound;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.activities.SecuredActivity;
import ru.rocketbank.r2d2.data.binding.sound.SchemeItemData;
import ru.rocketbank.r2d2.data.binding.sound.SoundBindingData;
import ru.rocketbank.r2d2.data.binding.sound.SoundsListener;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonHandler;
import ru.rocketbank.r2d2.data.binding.toolbar.ToolbarWithButtonOnlyData;
import ru.rocketbank.r2d2.databinding.ActivitySoundBinding;
import ru.rocketbank.r2d2.databinding.LayoutSoundItemBinding;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;

/* compiled from: SoundActivity.kt */
public final class SoundActivity extends SecuredActivity implements OnSoundAction, SoundsListener, ToolbarWithButtonHandler {
    public static final Companion Companion = new Companion();
    private HashMap _$_findViewCache;
    private int activated = SoundNotification.INSTANCE.getSelectedMode();
    private String apiVal;
    private BottomSheetBehavior<View> behavior;
    private int behaviorHeight;
    private ActivitySoundBinding binding;
    private SoundItemData currentSoundItemData;
    private MediaPlayer player;
    private int selected = SoundNotification.INSTANCE.getSelectedMode();
    private SoundBindingData soundBinding;
    private final ArrayList<SchemeItemData> soundItems = new ArrayList(6);
    private Subscription subscription;
    private ToolbarWithButtonOnlyData toolbarData = new ToolbarWithButtonOnlyData();
    private UserApi userAPI;

    /* compiled from: SoundActivity.kt */
    public static final class Companion {
        private Companion() {
        }

        public final void start(Context context) {
            Intrinsics.checkParameterIsNotNull(context, "context");
            context.startActivity(new Intent(context, SoundActivity.class));
        }
    }

    public static final void start(Context context) {
        Companion.start(context);
    }

    public final void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public final View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        view = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), view);
        return view;
    }

    public static final /* synthetic */ ActivitySoundBinding access$getBinding$p(SoundActivity soundActivity) {
        soundActivity = soundActivity.binding;
        if (soundActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        return soundActivity;
    }

    public static final /* synthetic */ SoundBindingData access$getSoundBinding$p(SoundActivity soundActivity) {
        soundActivity = soundActivity.soundBinding;
        if (soundActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("soundBinding");
        }
        return soundActivity;
    }

    public final void stop(SoundItemData soundItemData) {
        Intrinsics.checkParameterIsNotNull(soundItemData, "soundItemData");
        MediaPlayer mediaPlayer = this.player;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
        }
        mediaPlayer = this.player;
        if (mediaPlayer != null) {
            mediaPlayer.release();
        }
        this.player = null;
        this.currentSoundItemData = null;
        soundItemData.getPlaying().set(false);
    }

    public final void start(int i, NotificationSound notificationSound, SoundItemData soundItemData) {
        Intrinsics.checkParameterIsNotNull(notificationSound, "notification");
        Intrinsics.checkParameterIsNotNull(soundItemData, "soundItemData");
        notificationSound = this.player;
        if (notificationSound != null) {
            notificationSound.stop();
            notificationSound.release();
        }
        notificationSound = this.currentSoundItemData;
        if (notificationSound != null) {
            notificationSound = notificationSound.getPlaying();
            if (notificationSound != null) {
                notificationSound.set(false);
            }
        }
        this.currentSoundItemData = soundItemData;
        this.player = null;
        i = SoundNotification.INSTANCE.getSound(i);
        if (i > 0) {
            i = MediaPlayer.create(this, i);
            if (i != 0) {
                i.setOnCompletionListener((OnCompletionListener) new SoundActivity$start$$inlined$let$lambda$1(this, soundItemData));
                i.setOnPreparedListener((OnPreparedListener) new SoundActivity$start$$inlined$let$lambda$2(this, soundItemData));
                this.player = i;
            }
        }
    }

    public final void nextPressed(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        showProgressDialog();
        view = this.userAPI;
        if (view == null) {
            Intrinsics.throwUninitializedPropertyAccessException("userAPI");
        }
        String str = this.apiVal;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("apiVal");
        }
        this.subscription = view.patchProfile(new PatchProfileBody(str)).observeOn(AndroidSchedulers.mainThread()).subscribe(new SoundActivity$nextPressed$1(this));
    }

    protected final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        bundle = DataBindingUtil.setContentView(this, C0859R.layout.activity_sound);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "DataBindingUtil.setConte… R.layout.activity_sound)");
        this.binding = (ActivitySoundBinding) bundle;
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle = bundle.include;
        if (bundle == null) {
            Intrinsics.throwNpe();
        }
        setSupportActionBar(bundle.toolbar);
        bundle = getSupportActionBar();
        if (bundle != null) {
            bundle.setDisplayHomeAsUpEnabled(true);
        }
        this.soundBinding = new SoundBindingData();
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        SoundBindingData soundBindingData = this.soundBinding;
        if (soundBindingData == null) {
            Intrinsics.throwUninitializedPropertyAccessException("soundBinding");
        }
        bundle.setData(soundBindingData);
        this.userAPI = getInjector().getUserApi();
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle = BottomSheetBehavior.from((View) bundle.bottom);
        Intrinsics.checkExpressionValueIsNotNull(bundle, "BottomSheetBehavior.from(binding.bottom)");
        this.behavior = bundle;
        bundle = this.behavior;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("behavior");
        }
        this.behaviorHeight = bundle.getPeekHeight();
        setCallback();
        fillSchemes();
        bundle = this.soundBinding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("soundBinding");
        }
        bundle = bundle.getSoundName().get();
        if (bundle == null) {
            Intrinsics.throwNpe();
        }
        this.apiVal = (String) bundle;
        bundle = this.binding;
        if (bundle == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        bundle.setToolbarBinding(this.toolbarData);
        this.toolbarData.getTitle().set(getString(C0859R.string.apply));
    }

    public final void onSoundHeaderClicked() {
        BottomSheetBehavior bottomSheetBehavior = this.behavior;
        if (bottomSheetBehavior == null) {
            Intrinsics.throwUninitializedPropertyAccessException("behavior");
        }
        switch (bottomSheetBehavior.getState()) {
            case 3:
                bottomSheetBehavior = this.behavior;
                if (bottomSheetBehavior == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("behavior");
                }
                bottomSheetBehavior.setState(4);
                break;
            case 4:
                bottomSheetBehavior = this.behavior;
                if (bottomSheetBehavior == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("behavior");
                }
                bottomSheetBehavior.setState(3);
                return;
            default:
                break;
        }
    }

    protected final void onStart() {
        super.onStart();
        ActivitySoundBinding activitySoundBinding = this.binding;
        if (activitySoundBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activitySoundBinding.setListener(this);
        activitySoundBinding = this.binding;
        if (activitySoundBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activitySoundBinding.setHandler(this);
        fillPlayList();
    }

    protected final void onStop() {
        super.onStop();
        Subscription subscription = this.subscription;
        if (subscription != null) {
            subscription.unsubscribe();
        }
        ActivitySoundBinding activitySoundBinding = this.binding;
        if (activitySoundBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activitySoundBinding.setListener(null);
        activitySoundBinding = this.binding;
        if (activitySoundBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activitySoundBinding.setHandler(null);
        hideProgressDialog();
    }

    protected final void onDestroy() {
        MediaPlayer mediaPlayer = this.player;
        if (mediaPlayer != null) {
            mediaPlayer.stop();
            mediaPlayer.release();
        }
        super.onDestroy();
    }

    private final void fillSchemes() {
        this.soundItems.clear();
        for (int i = 1; i <= 6; i++) {
            this.soundItems.add(new SchemeItemData());
        }
        ((SchemeItemData) this.soundItems.get(1)).setSound(1);
        ((SchemeItemData) this.soundItems.get(2)).setSound(2);
        ((SchemeItemData) this.soundItems.get(3)).setSound(3);
        ((SchemeItemData) this.soundItems.get(4)).setSound(4);
        ((SchemeItemData) this.soundItems.get(5)).setSound(5);
        ((SchemeItemData) this.soundItems.get(this.activated)).isActive().set(true);
        ((SchemeItemData) this.soundItems.get(this.activated)).isCurrent().set(true);
        ActivitySoundBinding activitySoundBinding = this.binding;
        if (activitySoundBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activitySoundBinding.setItems(this.soundItems);
        onSoundItemClicked(this.activated);
    }

    public final void onSoundItemClicked(int i) {
        String string;
        boolean z = false;
        SoundBindingData soundBindingData;
        BottomSheetBehavior bottomSheetBehavior;
        switch (i) {
            case 1:
                soundBindingData = this.soundBinding;
                if (soundBindingData == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("soundBinding");
                }
                soundBindingData.getSoundName().set(getString(C0859R.string.orcs_sound));
                bottomSheetBehavior = this.behavior;
                if (bottomSheetBehavior == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("behavior");
                }
                bottomSheetBehavior.setHideable(false);
                bottomSheetBehavior = this.behavior;
                if (bottomSheetBehavior == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("behavior");
                }
                bottomSheetBehavior.setState(4);
                string = getString(C0859R.string.api_orcs);
                Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.api_orcs)");
                break;
            case 2:
                soundBindingData = this.soundBinding;
                if (soundBindingData == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("soundBinding");
                }
                soundBindingData.getSoundName().set(getString(C0859R.string.humans_sound));
                bottomSheetBehavior = this.behavior;
                if (bottomSheetBehavior == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("behavior");
                }
                bottomSheetBehavior.setHideable(false);
                bottomSheetBehavior = this.behavior;
                if (bottomSheetBehavior == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("behavior");
                }
                bottomSheetBehavior.setState(4);
                string = getString(C0859R.string.api_humans);
                Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.api_humans)");
                break;
            case 3:
                soundBindingData = this.soundBinding;
                if (soundBindingData == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("soundBinding");
                }
                soundBindingData.getSoundName().set(getString(C0859R.string.gnom_sound));
                bottomSheetBehavior = this.behavior;
                if (bottomSheetBehavior == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("behavior");
                }
                bottomSheetBehavior.setHideable(false);
                bottomSheetBehavior = this.behavior;
                if (bottomSheetBehavior == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("behavior");
                }
                bottomSheetBehavior.setState(4);
                string = getString(C0859R.string.api_gnom);
                Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.api_gnom)");
                break;
            case 4:
                soundBindingData = this.soundBinding;
                if (soundBindingData == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("soundBinding");
                }
                soundBindingData.getSoundName().set(getString(C0859R.string.sienduk_originals_sound));
                bottomSheetBehavior = this.behavior;
                if (bottomSheetBehavior == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("behavior");
                }
                bottomSheetBehavior.setHideable(false);
                bottomSheetBehavior = this.behavior;
                if (bottomSheetBehavior == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("behavior");
                }
                bottomSheetBehavior.setState(4);
                SoundNotification.INSTANCE.resetCycles();
                string = getString(C0859R.string.api_lejeboker);
                Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.api_lejeboker)");
                break;
            case 5:
                soundBindingData = this.soundBinding;
                if (soundBindingData == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("soundBinding");
                }
                soundBindingData.getSoundName().set(getString(C0859R.string.from_sienduk_sound));
                bottomSheetBehavior = this.behavior;
                if (bottomSheetBehavior == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("behavior");
                }
                bottomSheetBehavior.setHideable(false);
                bottomSheetBehavior = this.behavior;
                if (bottomSheetBehavior == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("behavior");
                }
                bottomSheetBehavior.setState(4);
                SoundNotification.INSTANCE.resetCycles();
                string = getString(C0859R.string.api_rickmorty);
                Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.api_rickmorty)");
                break;
            default:
                SoundBindingData soundBindingData2 = this.soundBinding;
                if (soundBindingData2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("soundBinding");
                }
                soundBindingData2.getSoundName().set(getString(C0859R.string.system_sound));
                BottomSheetBehavior bottomSheetBehavior2 = this.behavior;
                if (bottomSheetBehavior2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("behavior");
                }
                bottomSheetBehavior2.setHideable(true);
                bottomSheetBehavior2 = this.behavior;
                if (bottomSheetBehavior2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("behavior");
                }
                bottomSheetBehavior2.setState(5);
                string = "";
                break;
        }
        this.apiVal = string;
        ((SchemeItemData) this.soundItems.get(this.selected)).isCurrent().set(false);
        ObservableBoolean isEnabled = this.toolbarData.isEnabled();
        if (this.activated != i) {
            z = true;
        }
        isEnabled.set(z);
        this.selected = i;
        ((SchemeItemData) this.soundItems.get(i)).isCurrent().set(true);
        SoundNotification.INSTANCE.setSelectedMode(i);
    }

    private final void fillPlayList() {
        ActivitySoundBinding activitySoundBinding = this.binding;
        if (activitySoundBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        activitySoundBinding.sounds.removeAllViews();
        for (Integer intValue : SoundNotification.INSTANCE.getNotifications()) {
            int intValue2 = intValue.intValue();
            NotificationSound notificationSound = (NotificationSound) SoundNotification.INSTANCE.getNotification().get(Integer.valueOf(intValue2));
            if (notificationSound != null) {
                SoundItemData soundItemData = new SoundItemData(notificationSound, intValue2, this);
                soundItemData.getSoundName().set(getString(notificationSound.getName()));
                soundItemData.getPlayImage().set(ContextCompat.getDrawable(getApplicationContext(), C0859R.drawable.sound_play));
                soundItemData.getStopImage().set(ContextCompat.getDrawable(getApplicationContext(), C0859R.drawable.sound_pause));
                LayoutInflater layoutInflater = getLayoutInflater();
                ActivitySoundBinding activitySoundBinding2 = this.binding;
                if (activitySoundBinding2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                }
                LayoutSoundItemBinding inflate = LayoutSoundItemBinding.inflate(layoutInflater, activitySoundBinding2.sounds, true);
                Intrinsics.checkExpressionValueIsNotNull(inflate, "itemBinding");
                inflate.setData(soundItemData);
            }
        }
    }

    public final void setCallback() {
        ActivitySoundBinding activitySoundBinding = this.binding;
        if (activitySoundBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        }
        BottomSheetBehavior from = BottomSheetBehavior.from(activitySoundBinding.bottom);
        if (from != null) {
            from.setBottomSheetCallback(new SoundActivity$setCallback$1(this));
        }
    }

    public final void animateColor(Object obj, String str, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(obj, "obj");
        Intrinsics.checkParameterIsNotNull(str, "property");
        obj = ObjectAnimator.ofInt(obj, str, i, i2);
        obj.setEvaluator((TypeEvaluator) new style());
        obj.start();
    }
}
