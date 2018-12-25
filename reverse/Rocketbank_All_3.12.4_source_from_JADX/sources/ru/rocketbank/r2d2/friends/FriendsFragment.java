package ru.rocketbank.r2d2.friends;

import android.content.ContentResolver;
import android.database.Cursor;
import android.databinding.DataBindingUtil;
import android.graphics.drawable.NinePatchDrawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.provider.ContactsContract.Contacts;
import android.support.design.widget.FloatingActionButton;
import android.support.v4.app.ActivityOptionsCompat;
import android.support.v4.content.ContextCompat;
import android.support.v4.util.Pair;
import android.support.v4.view.MenuItemCompat;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.LinearLayoutManager.SavedState;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.SearchView;
import android.support.v7.widget.SearchView.OnCloseListener;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.jakewharton.rxbinding.support.v7.widget.RxSearchView;
import de.greenrobot.event.EventBus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import ru.rocketbank.core.events.ContactsEvent;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.manager.ContactManager;
import ru.rocketbank.core.model.RequestPermissionEvent;
import ru.rocketbank.core.model.contact.Contact;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.widgets.ItemShadowDecorator;
import ru.rocketbank.core.widgets.SectionedRecyclerViewAdapter;
import ru.rocketbank.core.widgets.SectionedRecyclerViewAdapter.Section;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Manifest.permission;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.data.binding.FabHandler;
import ru.rocketbank.r2d2.databinding.FriendsFragmentBinding;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.friends.FriendsAdapter.ViewHolder;
import ru.rocketbank.r2d2.helpers.UIHelper;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.functions.Action2;
import rx.functions.Func1;
import rx.schedulers.Schedulers;

public class FriendsFragment extends RocketFragment implements FabHandler {
    private static final String KEY_RECYCLER_VIEW_STATE = "KEY_RECYCLER_VIEW_STATE";
    private static final String KEY_ROCKET_FRIENDS = "KEY_ROCKET_FRIENDS";
    private static final String KEY_ROCKET_FRIENDS_IDS = "KEY_ROCKET_FRIENDS_IDS";
    private static final String KEY_SEARCH_QUERY = "KEY_SEARCH_QUERY";
    private static final String KEY_TRANSFER_FRIENDS = "KEY_TRANSFER_FRIENDS";
    private static final String TAG = "FriendsFragment";
    protected SectionedRecyclerViewAdapter adapter;
    Authorization authorization;
    private FriendsFragmentBinding binding;
    ContactManager contactManager;
    private Subscription contactSubscription;
    private ContentResolver contentResolver;
    private Cursor cursor;
    FloatingActionButton fab;
    protected FriendsAdapter friendsAdapter;
    TextView nothingFoundTextView;
    View nothingFoundView;
    ProgressBar progressBar;
    RecyclerView recyclerView;
    protected ArrayList<Long> rocketContactIDS;
    protected ArrayList<Contact> rocketFriends = new ArrayList();
    private Subscription rocketFriendsSubscription;
    private SavedState savedState;
    protected String searchQuery;
    private Subscription searchSubscription;
    private SearchView searchView;
    Toolbar toolbar;
    protected ArrayList<Contact> transferFriends = new ArrayList();
    protected Subscription userSubscription;

    /* renamed from: ru.rocketbank.r2d2.friends.FriendsFragment$7 */
    class C16817 implements OnCloseListener {
        C16817() {
        }

        public boolean onClose() {
            FriendsFragment.this.refreshCursor();
            return false;
        }
    }

    /* renamed from: ru.rocketbank.r2d2.friends.FriendsFragment$5 */
    class C18005 implements Func1<String, String> {
        C18005() {
        }

        public String call(String str) {
            return str.trim();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.friends.FriendsFragment$6 */
    class C18016 implements Func1<CharSequence, String> {
        C18016() {
        }

        public String call(CharSequence charSequence) {
            return charSequence.toString();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.friends.FriendsFragment$1 */
    class C20151 implements Action1<ContactsEvent> {
        C20151() {
        }

        public void call(ContactsEvent contactsEvent) {
            if (contactsEvent.getInProgressEvent() != null) {
                FriendsFragment.this.showProgress();
            } else {
                FriendsFragment.this.onRocketFriendsLoaded(contactsEvent);
            }
        }
    }

    /* renamed from: ru.rocketbank.r2d2.friends.FriendsFragment$2 */
    class C20162 implements Action1<Throwable> {
        C20162() {
        }

        public void call(Throwable th) {
            FriendsFragment.this.onError(th);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.friends.FriendsFragment$3 */
    class C20173 implements Action2<ViewHolder, Contact> {
        C20173() {
        }

        public void call(ViewHolder viewHolder, Contact contact) {
            contact.updateContacts(FriendsFragment.this.getContext());
            if (VERSION.SDK_INT >= 21) {
                Bundle bundle = new Bundle();
                bundle.putString("a", viewHolder.avatar.getTransitionName());
                bundle.putString("n", viewHolder.name.getTransitionName());
                FriendActivity.startActivity(FriendsFragment.this.getContext(), contact, bundle, ActivityOptionsCompat.makeSceneTransitionAnimation(FriendsFragment.this.getActivity(), new Pair[]{new Pair(viewHolder.avatar, viewHolder.avatar.getTransitionName()), new Pair(viewHolder.name, viewHolder.name.getTransitionName()), new Pair(viewHolder.root, viewHolder.root.getTransitionName())}).toBundle());
                return;
            }
            FriendActivity.startActivity(FriendsFragment.this.getContext(), contact);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.friends.FriendsFragment$4 */
    class C20184 implements Action1<String> {
        C20184() {
        }

        public void call(String str) {
            FriendsFragment.this.filter(str);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.friends.FriendsFragment$8 */
    class C20198 implements Action1<Cursor> {
        C20198() {
        }

        public void call(Cursor cursor) {
            FriendsFragment.this.cursor = cursor;
            FriendsFragment.this.friendsAdapter.setCursor(cursor);
            FriendsFragment.this.updateSections();
        }
    }

    /* renamed from: ru.rocketbank.r2d2.friends.FriendsFragment$9 */
    class C20209 implements Action1<Throwable> {
        C20209() {
        }

        public void call(Throwable th) {
            Log.e(FriendsFragment.TAG, "Failed to receive cursor", th);
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.binding = (FriendsFragmentBinding) DataBindingUtil.inflate(layoutInflater, C0859R.layout.friends_fragment, viewGroup, false);
        this.binding.setHandler(this);
        this.fab = this.binding.fab;
        this.progressBar = this.binding.progressBar;
        this.nothingFoundView = this.binding.nothingFound;
        this.nothingFoundTextView = this.binding.nothingFoundText;
        this.recyclerView = this.binding.recyclerView;
        this.toolbar = this.binding.toolbarInclude.toolbar;
        setToolbarSize(this.toolbar, getStatusBarHeight());
        setToolbarActionBar(this.toolbar);
        return this.binding.getRoot();
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.authorization = getInjector().getAuthorization();
        this.contactManager = getInjector().getContactManager();
        this.contentResolver = getContext().getContentResolver();
        this.recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        this.friendsAdapter = createFriendAdapter();
        this.adapter = new SectionedRecyclerViewAdapter(this.friendsAdapter);
        this.recyclerView.setAdapter(this.adapter);
        if (UIHelper.supportsViewElevation() == null) {
            this.recyclerView.addItemDecoration(new ItemShadowDecorator((NinePatchDrawable) ContextCompat.getDrawable(getContext(), C0859R.drawable.material_shadow_z1)));
        }
        if (this.cursor != null) {
            refreshDataSources();
            return;
        }
        if (bundle == null) {
            showProgress();
            this.contactManager.loadContacts(true);
        } else {
            this.rocketFriends = (ArrayList) bundle.getSerializable(KEY_ROCKET_FRIENDS);
            this.transferFriends = (ArrayList) bundle.getSerializable(KEY_TRANSFER_FRIENDS);
            this.rocketContactIDS = (ArrayList) bundle.getSerializable(KEY_ROCKET_FRIENDS_IDS);
            this.savedState = (SavedState) bundle.getParcelable(KEY_RECYCLER_VIEW_STATE);
            this.searchQuery = bundle.getString(KEY_SEARCH_QUERY);
            refreshDataSources();
        }
        checkPermission();
    }

    public void onResume() {
        super.onResume();
        this.toolbar.setTitle(C0859R.string.title_activity_friends_fragment);
        if (this.cursor == null) {
            this.rocketFriendsSubscription = this.contactManager.getContactsObservable().observeOn(AndroidSchedulers.mainThread()).subscribe(new C20151(), new C20162());
        }
        subscribeSearchView();
    }

    protected FriendsAdapter createFriendAdapter() {
        return new FriendsAdapter(new C20173());
    }

    private void checkPermission() {
        if (VERSION.SDK_INT >= 23) {
            int checkSelfPermission = ContextCompat.checkSelfPermission(RocketApplication.getContext(), permission.READ_CONTACTS);
            if (checkSelfPermission == -1) {
                hideProgress();
                this.nothingFoundTextView.setText(C0859R.string.contact_permission_denied_message);
            } else if (checkSelfPermission != 0) {
                EventBus.getDefault().post(new RequestPermissionEvent(new String[]{permission.READ_CONTACTS}));
            }
        }
    }

    public void onPause() {
        unsubscribe(this.contactSubscription);
        unsubscribe(this.userSubscription);
        unsubscribe(this.rocketFriendsSubscription);
        unsubscribe(this.searchSubscription);
        if (!(this.recyclerView == null || this.recyclerView.getLayoutManager() == null)) {
            this.savedState = (SavedState) this.recyclerView.getLayoutManager().onSaveInstanceState();
        }
        super.onPause();
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(C0859R.menu.invite_friends_menu, menu);
        this.searchView = (SearchView) MenuItemCompat.getActionView(menu.findItem(C0859R.id.search));
        subscribeSearchView();
        if (this.searchView != null && this.searchQuery != null && this.searchQuery.isEmpty() == null) {
            this.searchView.setQuery(this.searchQuery, true);
            this.searchView.setIconified(null);
        }
    }

    private void subscribeSearchView() {
        if (this.searchView != null) {
            this.searchSubscription = RxSearchView.queryTextChanges(this.searchView).skip(1).observeOn(AndroidSchedulers.mainThread()).map(new C18016()).map(new C18005()).subscribe(new C20184());
            this.searchView.setOnCloseListener(new C16817());
        }
    }

    protected void refreshCursor() {
        refreshCursor(null);
    }

    private void refreshCursor(String str) {
        if (!(this.contactSubscription == null || this.contactSubscription.isUnsubscribed())) {
            this.contactSubscription.unsubscribe();
        }
        this.contactSubscription = requestCursorUpdate(str).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new C20198(), new C20209());
    }

    protected void updateSections() {
        if (getActivity() != null) {
            if (!isDetached()) {
                int i = 0;
                if (this.friendsAdapter.getCursor() != null && this.adapter.getItemCount() == 0) {
                    hideProgress();
                    if (this.searchQuery == null || this.searchQuery.isEmpty()) {
                        this.nothingFoundTextView.setText(C0859R.string.empty_contact_list);
                        return;
                    }
                    this.nothingFoundTextView.setText(String.format(getString(C0859R.string.not_found_request), new Object[]{this.searchQuery}));
                } else if (this.friendsAdapter.getCursor() != null) {
                    this.progressBar.setVisibility(8);
                    this.nothingFoundView.setVisibility(8);
                    this.recyclerView.setVisibility(0);
                    List arrayList = new ArrayList();
                    if (this.friendsAdapter.getTransfersCount() != 0) {
                        arrayList.add(new Section(0, getString(C0859R.string.transfer_friends)));
                        i = 0 + this.friendsAdapter.getTransfersCount();
                    }
                    if (this.friendsAdapter.getRocketFriendsCount() != 0) {
                        arrayList.add(new Section(i, getString(C0859R.string.in_rocketbank)));
                        i += this.friendsAdapter.getRocketFriendsCount();
                    }
                    if (this.friendsAdapter.getFriendsCount() != 0) {
                        arrayList.add(new Section(i, getString(C0859R.string.not_in_rocketbank)));
                    }
                    this.adapter.setSections((Section[]) arrayList.toArray(new Section[arrayList.size()]));
                    if (this.savedState != null) {
                        this.recyclerView.getLayoutManager().onRestoreInstanceState(this.savedState);
                        this.savedState = null;
                    }
                }
            }
        }
    }

    private void hideProgress() {
        this.progressBar.setVisibility(8);
        this.nothingFoundView.setVisibility(0);
        this.recyclerView.setVisibility(8);
    }

    private void showProgress() {
        this.nothingFoundView.setVisibility(8);
        this.recyclerView.setVisibility(8);
        this.progressBar.setVisibility(0);
    }

    private Observable<Cursor> requestCursorUpdate(final String str) {
        closeCursor();
        return Observable.create(new OnSubscribe<Cursor>() {
            public void call(Subscriber<? super Cursor> subscriber) {
                Throwable th;
                Cursor access$200;
                try {
                    access$200 = FriendsFragment.this.queryCursor(str);
                    try {
                        if (subscriber.isUnsubscribed()) {
                            access$200.close();
                            return;
                        }
                        subscriber.onNext(access$200);
                        subscriber.onCompleted();
                    } catch (Throwable th2) {
                        th = th2;
                        if (access$200 != null) {
                            access$200.close();
                        }
                        if (!subscriber.isUnsubscribed()) {
                            subscriber.onError(th);
                        }
                    }
                } catch (Throwable th3) {
                    Throwable th4 = th3;
                    access$200 = null;
                    th = th4;
                    if (access$200 != null) {
                        access$200.close();
                    }
                    if (subscriber.isUnsubscribed()) {
                        subscriber.onError(th);
                    }
                }
            }
        });
    }

    public void onRocketFriendsLoaded(ContactsEvent contactsEvent) {
        if (contactsEvent.getErrorEvent() != null) {
            Throwable exception = contactsEvent.getErrorEvent().getException();
            if (exception != null) {
                AnalyticsManager.logException(exception);
            }
            hideProgress();
            this.nothingFoundView.setVisibility(0);
            this.nothingFoundTextView.setText(contactsEvent.getErrorEvent().getMessageStringResource());
            UIHelper.showSnack(getView(), contactsEvent.getErrorEvent().getMessageStringResource());
            return;
        }
        this.rocketContactIDS = new ArrayList(contactsEvent.getRocketContactIDS());
        this.rocketFriends = new ArrayList(contactsEvent.getServerContacts());
        this.transferFriends = new ArrayList(contactsEvent.getTransferFriends());
        refreshDataSources();
    }

    protected void onError(Throwable th) {
        th.printStackTrace();
    }

    protected void refreshDataSources() {
        if (this.rocketContactIDS == null) {
            this.rocketContactIDS = new ArrayList();
        }
        if (this.rocketFriends == null) {
            this.rocketFriends = new ArrayList();
        }
        if (this.transferFriends == null) {
            this.transferFriends = new ArrayList();
        }
        this.friendsAdapter.setRocketFriends(this.rocketFriends);
        this.friendsAdapter.setTransfers(this.transferFriends);
        updateSections();
        refreshCursor();
    }

    public void filter(String str) {
        List arrayList;
        List arrayList2;
        this.searchQuery = str;
        if (str != null) {
            if (!str.isEmpty()) {
                Contact contact;
                arrayList = new ArrayList();
                arrayList2 = new ArrayList();
                Iterator it = this.rocketFriends.iterator();
                while (it.hasNext()) {
                    contact = (Contact) it.next();
                    if (contact.contains(str)) {
                        arrayList.add(contact);
                    }
                }
                it = this.transferFriends.iterator();
                while (it.hasNext()) {
                    contact = (Contact) it.next();
                    if (contact.contains(str)) {
                        arrayList2.add(contact);
                    }
                }
                StringBuilder stringBuilder = new StringBuilder("display_name like '%");
                stringBuilder.append(str);
                stringBuilder.append("%' COLLATE NOCASE");
                str = stringBuilder.toString();
                this.friendsAdapter.setRocketFriends(arrayList);
                this.friendsAdapter.setTransfers(arrayList2);
                refreshCursor(str);
            }
        }
        arrayList = new ArrayList(this.rocketFriends);
        arrayList2 = new ArrayList(this.transferFriends);
        str = null;
        this.friendsAdapter.setRocketFriends(arrayList);
        this.friendsAdapter.setTransfers(arrayList2);
        refreshCursor(str);
    }

    private Cursor queryCursor(String str) {
        String str2 = "in_visible_group='1'";
        if (!(this.rocketContactIDS == null || this.rocketContactIDS.isEmpty())) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(str2);
            stringBuilder.append(String.format(" AND %s NOT IN (%s)", new Object[]{"_id", Utils.join(this.rocketContactIDS, ",")}));
            str2 = stringBuilder.toString();
        }
        if (str != null) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(str2);
            stringBuilder.append(" AND ");
            stringBuilder.append(str);
            str2 = stringBuilder.toString();
        }
        String str3 = str2;
        return this.contentResolver.query(Contacts.CONTENT_URI, new String[]{"_id", "photo_thumb_uri", "display_name"}, str3, null, "display_name");
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable(KEY_ROCKET_FRIENDS, this.rocketFriends);
        bundle.putSerializable(KEY_TRANSFER_FRIENDS, this.transferFriends);
        bundle.putSerializable(KEY_ROCKET_FRIENDS_IDS, this.rocketContactIDS);
        if (!(this.recyclerView == null || this.recyclerView.getLayoutManager() == null)) {
            bundle.putParcelable(KEY_RECYCLER_VIEW_STATE, this.recyclerView.getLayoutManager().onSaveInstanceState());
        }
        if (this.searchView != null) {
            bundle.putString(KEY_SEARCH_QUERY, this.searchView.getQuery().toString());
        }
    }

    public boolean onBackPressed() {
        if (this.searchView == null || this.searchView.isIconified()) {
            return false;
        }
        this.searchView.clearFocus();
        this.searchView.setIconified(true);
        return true;
    }

    public void onFabClick() {
        InviteFriendsActivity.startActivity(getContext(), true, (this.fab.getLeft() + this.fab.getRight()) / 2, (this.fab.getTop() + this.fab.getBottom()) / 2);
    }

    public void onDestroy() {
        closeCursor();
        super.onDestroy();
    }

    public void closeCursor() {
        if (this.friendsAdapter != null) {
            this.friendsAdapter.setCursor(null);
        }
        if (this.cursor != null) {
            this.cursor.close();
            this.cursor = null;
        }
    }

    public void onFabClicked(View view) {
        onFabClick();
    }
}
