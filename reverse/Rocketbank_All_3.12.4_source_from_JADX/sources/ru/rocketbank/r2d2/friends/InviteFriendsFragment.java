package ru.rocketbank.r2d2.friends;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.databinding.DataBindingUtil;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.design.widget.Snackbar;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.widget.LinearLayoutManager;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.github.ksoichiro.android.observablescrollview.ObservableRecyclerView;
import com.github.ksoichiro.android.observablescrollview.ObservableScrollViewCallbacks;
import com.github.ksoichiro.android.observablescrollview.ScrollState;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import ru.rocketbank.core.events.ContactsEvent;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.contact.InvitationsResponse;
import ru.rocketbank.core.model.contact.InvitedFriend;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.widgets.SectionedRecyclerViewAdapter.Section;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.data.binding.InviteFriendsFragmentHandler;
import ru.rocketbank.r2d2.databinding.FragmentInviteFriendsBinding;
import ru.rocketbank.r2d2.helpers.UIHelper;
import rx.Observable;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.functions.Func1;
import rx.functions.Func2;
import rx.schedulers.Schedulers;

public class InviteFriendsFragment extends FriendsFragment implements SurfaceTextureListener, ObservableScrollViewCallbacks, InviteFriendsFragmentHandler {
    private static final String KEY_INVITED_FRIENDS = "KEY_INVITED_FRIENDS";
    private int actionBarSize;
    View content;
    private int currentToolbarColor = 0;
    private int fabMargin;
    private int fabTranslationX;
    private float fabTranslationY;
    private int flexibleSpaceImageHeight;
    private int flexibleSpaceShowFabOffset;
    private View headerView;
    private View imageView;
    private ArrayList<InvitedFriend> invitations = new ArrayList();
    private Subscription invitationsSubscription;
    private FragmentInviteFriendsBinding inviteFriendsFragmentHandler;
    private boolean mFabIsShown;
    private MediaPlayer mediaPlayer;
    private View overlayView;
    private View recyclerViewBackground;
    private RocketAPI rocketAPI;
    TextView titleURL;
    private int toolbarColor = -1;
    TextureView videoView;

    /* renamed from: ru.rocketbank.r2d2.friends.InviteFriendsFragment$1 */
    class C15841 implements Runnable {
        C15841() {
        }

        public void run() {
            InviteFriendsFragment.this.headerView.getLayoutParams().height = InviteFriendsFragment.this.flexibleSpaceImageHeight;
        }
    }

    /* renamed from: ru.rocketbank.r2d2.friends.InviteFriendsFragment$2 */
    class C15852 implements OnTouchListener {
        C15852() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            return InviteFriendsFragment.this.imageView.dispatchTouchEvent(motionEvent);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.friends.InviteFriendsFragment$3 */
    class C15863 implements Runnable {
        C15863() {
        }

        public void run() {
            InviteFriendsFragment.this.recyclerViewBackground.setTranslationY((float) InviteFriendsFragment.this.flexibleSpaceImageHeight);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.friends.InviteFriendsFragment$4 */
    class C15874 implements Runnable {
        C15874() {
        }

        public void run() {
            InviteFriendsFragment.this.onScrollChanged(0, false, false);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.friends.InviteFriendsFragment$8 */
    class C18068 implements Func2<ArrayList<InvitedFriend>, InvitedFriend, ArrayList<InvitedFriend>> {
        C18068() {
        }

        public ArrayList<InvitedFriend> call(ArrayList<InvitedFriend> arrayList, InvitedFriend invitedFriend) {
            arrayList.add(invitedFriend);
            return arrayList;
        }
    }

    /* renamed from: ru.rocketbank.r2d2.friends.InviteFriendsFragment$9 */
    class C18079 implements Func1<InvitedFriend, Boolean> {
        C18079() {
        }

        public Boolean call(InvitedFriend invitedFriend) {
            return Boolean.valueOf("failed".equals(invitedFriend.getStatus()) ^ 1);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.friends.InviteFriendsFragment$5 */
    class C20215 implements Action1<UserModel> {
        C20215() {
        }

        public void call(UserModel userModel) {
            userModel = userModel.getInvites().getUrl();
            if (userModel.startsWith("https://")) {
                userModel = userModel.replace("https://", "");
            }
            InviteFriendsFragment.this.titleURL.setText(userModel);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.friends.InviteFriendsFragment$7 */
    class C20237 implements Action1<Throwable> {
        C20237() {
        }

        public void call(Throwable th) {
            InviteFriendsFragment.this.onError(th);
        }
    }

    public void onDownMotionEvent() {
    }

    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public void onUpOrCancelMotionEvent(ScrollState scrollState) {
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.rocketAPI = getInjector().getRocketApi();
        RocketApplication.Companion.getInjector().getAnalyticsManager().invites();
    }

    protected View inflate(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        this.inviteFriendsFragmentHandler = (FragmentInviteFriendsBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.fragment_invite_friends, viewGroup, false);
        this.inviteFriendsFragmentHandler.setHandler(this);
        this.content = this.inviteFriendsFragmentHandler.content;
        this.titleURL = this.inviteFriendsFragmentHandler.titleURL;
        this.videoView = this.inviteFriendsFragmentHandler.videoView;
        this.recyclerView = this.inviteFriendsFragmentHandler.recyclerView;
        this.toolbar = this.inviteFriendsFragmentHandler.toolbar;
        this.fab = this.inviteFriendsFragmentHandler.fab;
        this.progressBar = this.inviteFriendsFragmentHandler.progressBar;
        this.nothingFoundView = this.inviteFriendsFragmentHandler.nothingFound;
        this.nothingFoundTextView = this.inviteFriendsFragmentHandler.nothingFoundText;
        return this.inviteFriendsFragmentHandler.getRoot();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater = inflate(layoutInflater, viewGroup);
        this.toolbar.setBackgroundColor(ContextCompat.getColor(getContext(), C0859R.color.white));
        setToolbarSize(this.toolbar, getStatusBarHeight());
        setToolbarActionBar(this.toolbar);
        this.recyclerView.setHasFixedSize(true);
        this.flexibleSpaceShowFabOffset = getResources().getDimensionPixelSize(C0859R.dimen.flexible_space_show_fab_offset);
        this.flexibleSpaceImageHeight = getResources().getDimensionPixelSize(C0859R.dimen.invite_friends_header);
        this.actionBarSize = getStatusBarHeight();
        ObservableRecyclerView observableRecyclerView = (ObservableRecyclerView) layoutInflater.findViewById(C0859R.id.recyclerView);
        observableRecyclerView.setScrollViewCallbacks(this);
        observableRecyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        observableRecyclerView.setHasFixedSize(false);
        this.headerView = LayoutInflater.from(getContext()).inflate(C0859R.layout.recycler_header, null);
        this.headerView.setLayoutParams(new LayoutParams(-1, this.flexibleSpaceImageHeight));
        this.headerView.setMinimumHeight(this.flexibleSpaceImageHeight);
        this.headerView.setClickable(true);
        this.headerView.post(new C15841());
        this.headerView.setOnTouchListener(new C15852());
        observableRecyclerView.setTouchInterceptionViewGroup((ViewGroup) layoutInflater.findViewById(C0859R.id.content));
        this.imageView = layoutInflater.findViewById(C0859R.id.image);
        this.overlayView = layoutInflater.findViewById(C0859R.id.overlay);
        this.recyclerViewBackground = layoutInflater.findViewById(C0859R.id.list_background);
        this.recyclerViewBackground.post(new C15863());
        this.overlayView.setTranslationY((float) this.flexibleSpaceImageHeight);
        this.fabMargin = getResources().getDimensionPixelSize(C0859R.dimen.fab_margin);
        this.fab.setScaleX(BitmapDescriptorFactory.HUE_RED);
        this.fab.setScaleY(BitmapDescriptorFactory.HUE_RED);
        this.fab.show();
        onScrollChanged(0, false, false);
        return layoutInflater;
    }

    public void onViewCreated(View view, Bundle bundle) {
        if (bundle != null) {
            this.invitations = (ArrayList) bundle.getSerializable(KEY_INVITED_FRIENDS);
        }
        super.onViewCreated(view, bundle);
        requestURL();
        this.overlayView.post(new C15874());
    }

    private void requestURL() {
        this.userSubscription = this.authorization.getUser().observeOn(AndroidSchedulers.mainThread()).subscribe(new C20215());
    }

    public void onResume() {
        super.onResume();
        if (this.titleURL.getText().length() == 0) {
            requestURL();
        }
        this.toolbar.setTitle(C0859R.string.invite_friends_title);
        showVideo();
    }

    public void onUrlClick(View view) {
        Utils.copyTextToClipboard(getContext(), "rocketbank", this.titleURL.getText().toString());
        Snackbar.make(view, "Ссылка скопирована в буфер обмена", -1).show();
    }

    protected FriendsAdapter createFriendAdapter() {
        return new InviteFriendsAdapter(null, this.headerView);
    }

    public void onRocketFriendsLoaded(final ContactsEvent contactsEvent) {
        if (contactsEvent.getErrorEvent() != null) {
            Throwable exception = contactsEvent.getErrorEvent().getException();
            if (exception != null) {
                AnalyticsManager.logException(exception);
            }
            UIHelper.showSnack(getView(), contactsEvent.getErrorEvent().getMessageStringResource());
        }
        this.invitationsSubscription = this.rocketAPI.invitations().subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).map(new Func1<InvitationsResponse, List<InvitedFriend>>() {
            public List<InvitedFriend> call(InvitationsResponse invitationsResponse) {
                return invitationsResponse.getInvitations();
            }
        }).flatMap(new Func1<List<InvitedFriend>, Observable<InvitedFriend>>() {
            public Observable<InvitedFriend> call(List<InvitedFriend> list) {
                return Observable.from((Iterable) list);
            }
        }).filter(new Func1<InvitedFriend, Boolean>() {
            public Boolean call(InvitedFriend invitedFriend) {
                return Boolean.valueOf(Utils.isNotBlank(invitedFriend.getUser().getFirstName()));
            }
        }).filter(new C18079()).reduce(new ArrayList(), new C18068()).subscribe(new Action1<ArrayList<InvitedFriend>>() {
            public void call(ArrayList<InvitedFriend> arrayList) {
                InviteFriendsFragment.this.rocketContactIDS = new ArrayList(contactsEvent.getRocketContactIDS());
                InviteFriendsFragment.this.rocketFriends = new ArrayList(contactsEvent.getServerContacts());
                InviteFriendsFragment.this.invitations = arrayList;
                InviteFriendsFragment.this.refreshDataSources();
            }
        }, new C20237());
    }

    public void refreshDataSources() {
        getFriendsInviteAdapter().setInvitations(this.invitations);
        super.refreshDataSources();
    }

    private InviteFriendsAdapter getFriendsInviteAdapter() {
        return (InviteFriendsAdapter) this.friendsAdapter;
    }

    public void onScrollChanged(int i, boolean z, boolean z2) {
        if (getActivity()) {
            z = (float) ((this.flexibleSpaceImageHeight - (this.actionBarSize * true)) - getStatusBarHeight());
            int i2 = -i;
            z2 = (float) (this.actionBarSize - this.overlayView.getHeight());
            this.overlayView.setTranslationY(Math.min(BitmapDescriptorFactory.HUE_RED, Math.max(z2, (float) i2)));
            this.imageView.setTranslationY(Math.min(BitmapDescriptorFactory.HUE_RED, Math.max(z2, (float) (i2 / 2))));
            this.recyclerViewBackground.setTranslationY((float) Math.max(0, this.flexibleSpaceImageHeight + i2));
            i = ((float) i) / z;
            this.overlayView.setAlpha(Math.min(true, Math.max(BitmapDescriptorFactory.HUE_RED, i)));
            i = Math.min(true, Math.max(BitmapDescriptorFactory.HUE_RED, i));
            this.toolbar.getBackground().setAlpha((int) (true * i));
            if (Float.compare(i, true) > 0) {
                this.toolbarColor = ViewCompat.MEASURED_STATE_MASK;
            } else {
                this.toolbarColor = -1;
            }
            if (this.toolbarColor != this.currentToolbarColor) {
                this.currentToolbarColor = this.toolbarColor;
                UIHelper.colorizeToolbar(this.toolbar, this.toolbarColor, getActivity());
            }
            i = this.fab.getLayoutParams().height;
            z = this.fab.getLayoutParams().width;
            z2 = this.fab.getPaddingRight();
            i /= 2;
            this.fabTranslationY = Math.min((float) (this.flexibleSpaceImageHeight - i), Math.max((float) (this.actionBarSize - (this.fab.getHeight() / 2)), (float) ((((i2 + this.flexibleSpaceImageHeight) - i) - this.fab.getPaddingTop()) + this.actionBarSize)));
            if (VERSION.SDK_INT < 11) {
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.fab.getLayoutParams();
                layoutParams.leftMargin = ((this.overlayView.getWidth() - this.fabMargin) - this.fab.getWidth()) - z2;
                layoutParams.topMargin = (int) this.fabTranslationY;
                this.fab.requestLayout();
            } else {
                this.fabTranslationX = ((this.overlayView.getWidth() - this.fabMargin) - z) - z2;
                this.fab.setTranslationX((float) this.fabTranslationX);
                this.fab.setTranslationY(this.fabTranslationY);
            }
            if (this.fabTranslationY < ((float) this.flexibleSpaceShowFabOffset)) {
                hideFab();
            } else {
                showFab();
            }
        }
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        this.toolbar.post(new Runnable() {
            public void run() {
                UIHelper.colorizeToolbar(InviteFriendsFragment.this.toolbar, InviteFriendsFragment.this.currentToolbarColor, InviteFriendsFragment.this.getActivity());
            }
        });
    }

    private void showFab() {
        if (!this.mFabIsShown) {
            this.fab.setVisibility(0);
            this.fab.animate().cancel();
            this.fab.animate().scaleX(1.0f).scaleY(1.0f).setDuration(200).setListener(new AnimatorListener() {
                public void onAnimationCancel(Animator animator) {
                }

                public void onAnimationEnd(Animator animator) {
                }

                public void onAnimationRepeat(Animator animator) {
                }

                public void onAnimationStart(Animator animator) {
                    InviteFriendsFragment.this.fab.setVisibility(0);
                }
            }).start();
            this.mFabIsShown = true;
        }
    }

    private void showVideo() {
        this.videoView.setSurfaceTextureListener(this);
    }

    private void hideFab() {
        if (this.mFabIsShown) {
            this.fab.animate().cancel();
            this.fab.animate().scaleX(BitmapDescriptorFactory.HUE_RED).scaleY(BitmapDescriptorFactory.HUE_RED).setDuration(200).setListener(new AnimatorListener() {
                public void onAnimationCancel(Animator animator) {
                }

                public void onAnimationRepeat(Animator animator) {
                }

                public void onAnimationStart(Animator animator) {
                }

                public void onAnimationEnd(Animator animator) {
                    InviteFriendsFragment.this.fab.setVisibility(8);
                }
            }).start();
            this.mFabIsShown = false;
        }
    }

    protected void updateSections() {
        this.recyclerView.setVisibility(0);
        this.progressBar.setVisibility(8);
        this.nothingFoundView.setVisibility(8);
        int i = 1;
        if (this.friendsAdapter.getCursor() != null && this.adapter.getItemCount() == 0) {
            this.progressBar.setVisibility(8);
            this.nothingFoundView.setVisibility(0);
            this.recyclerView.setVisibility(8);
            if (this.searchQuery == null || this.searchQuery.isEmpty()) {
                this.nothingFoundTextView.setText(C0859R.string.empty_contact_list);
                return;
            }
            this.nothingFoundTextView.setText(String.format(getString(C0859R.string.not_found_request), new Object[]{this.searchQuery}));
        } else if (this.friendsAdapter.getCursor() != null) {
            List arrayList = new ArrayList();
            if (getFriendsInviteAdapter().getInvitationsCount() > 0) {
                arrayList.add(new Section(1, getString(C0859R.string.invited_friends)));
                i = 1 + getFriendsInviteAdapter().getInvitationsCount();
            }
            if (this.friendsAdapter.getFriendsCount() != 0) {
                arrayList.add(new Section(i, getString(C0859R.string.not_in_rocketbank)));
                this.friendsAdapter.getFriendsCount();
            }
            this.adapter.setSections((Section[]) arrayList.toArray(new Section[arrayList.size()]));
        }
    }

    public void filter(String str) {
        List arrayList;
        if (str != null) {
            if (!str.isEmpty()) {
                arrayList = new ArrayList();
                Iterator it = this.invitations.iterator();
                while (it.hasNext()) {
                    InvitedFriend invitedFriend = (InvitedFriend) it.next();
                    if (invitedFriend.contains(str)) {
                        arrayList.add(invitedFriend);
                    }
                }
                getFriendsInviteAdapter().setInvitations(arrayList);
                super.filter(str);
            }
        }
        arrayList = new ArrayList(this.invitations);
        getFriendsInviteAdapter().setInvitations(arrayList);
        super.filter(str);
    }

    public void onDestroyView() {
        unsubscribe(this.invitationsSubscription);
        super.onDestroyView();
    }

    public void onFabClick(View view) {
        InviteFriendsInfoActivity.startActivity(getContext(), this.titleURL.getText().toString(), true, this.fabTranslationX + ((this.fab.getLeft() + this.fab.getRight()) / 2), (int) (this.fabTranslationY + ((float) ((this.fab.getTop() + this.fab.getBottom()) / 2))));
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable(KEY_INVITED_FRIENDS, this.invitations);
    }

    protected int getStatusBarHeight() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", AbstractSpiCall.ANDROID_CLIENT_TYPE);
        return identifier > 0 ? getResources().getDimensionPixelSize(identifier) : 0;
    }

    public String getRawPath(int i) {
        StringBuilder stringBuilder = new StringBuilder("android.resource://");
        stringBuilder.append(getActivity().getPackageName());
        stringBuilder.append("/");
        stringBuilder.append(i);
        return stringBuilder.toString();
    }

    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        i = new Surface(surfaceTexture);
        try {
            this.mediaPlayer = getInjector().getMediaPlayer();
            this.mediaPlayer.reset();
            this.mediaPlayer.setDataSource(getActivity(), Uri.parse(getRawPath(C0859R.raw.friends)));
            this.mediaPlayer.setSurface(i);
            this.mediaPlayer.prepare();
            this.mediaPlayer.start();
            this.mediaPlayer.setLooping(0);
        } catch (SurfaceTexture surfaceTexture2) {
            AnalyticsManager.logException(surfaceTexture2);
        }
    }

    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        try {
            this.mediaPlayer.setSurface(null);
            this.mediaPlayer.reset();
        } catch (SurfaceTexture surfaceTexture2) {
            AnalyticsManager.logException(surfaceTexture2);
        }
        return null;
    }
}
