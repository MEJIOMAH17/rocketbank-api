package ru.rocketbank.r2d2.friends;

import android.database.Cursor;
import android.os.Build.VERSION;
import android.support.v7.widget.RecyclerView.Adapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
import ru.rocketbank.core.model.contact.Contact;
import ru.rocketbank.core.widgets.ContactAvatarView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.helpers.UIHelper;
import rx.functions.Action2;
import rx.functions.Func1;

public class FriendsAdapter extends Adapter<android.support.v7.widget.RecyclerView.ViewHolder> {
    private static final int ITEM_VIEW_TYPE_FRIEND = 0;
    private static final int ITEM_VIEW_TYPE_ROCKET_FRIEND = 1;
    private static final String TRANSITION_NAME_AVATAR = "avatar";
    private static final String TRANSITION_NAME_NAME = "name";
    private static final String TRANSITION_NAME_ROOT = "root";
    protected Cursor friendsCursor;
    private int indexDisplayName = 0;
    private int indexID = 0;
    private int indexThumbnail = 0;
    private Action2<ViewHolder, Contact> onContactClickListener;
    private List<Contact> rocketFriends = new ArrayList();
    private List<Contact> transfers = new ArrayList();

    public static class ViewHolder extends android.support.v7.widget.RecyclerView.ViewHolder {
        ContactAvatarView avatar;
        TextView name;
        View rocketIcon;
        ViewGroup root;

        public ViewHolder(View view) {
            super(view);
            this.root = (ViewGroup) view.findViewById(C0859R.id.root);
            this.name = (TextView) view.findViewById(C0859R.id.name);
            this.avatar = (ContactAvatarView) view.findViewById(C0859R.id.avatar);
            this.rocketIcon = view.findViewById(C0859R.id.imageview_rocketbank_icon);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.friends.FriendsAdapter$2 */
    class C17982 implements Func1<Integer, Boolean> {
        C17982() {
        }

        public Boolean call(Integer num) {
            return Boolean.valueOf(FriendsAdapter.this.isFirstInSection(num.intValue()));
        }
    }

    /* renamed from: ru.rocketbank.r2d2.friends.FriendsAdapter$3 */
    class C17993 implements Func1<Integer, Boolean> {
        C17993() {
        }

        public Boolean call(Integer num) {
            return Boolean.valueOf(FriendsAdapter.this.isLastInSection(num.intValue()));
        }
    }

    public FriendsAdapter(Action2<ViewHolder, Contact> action2) {
        this.onContactClickListener = action2;
    }

    public android.support.v7.widget.RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C0859R.layout.list_item_contact, viewGroup, false));
    }

    public Contact getFriend(int i) {
        if (hasTransfers()) {
            if (i >= 0 && i < this.transfers.size()) {
                return (Contact) this.transfers.get(i);
            }
            i -= this.transfers.size();
        }
        if (hasRocketFriends()) {
            if (i >= 0 && i < this.rocketFriends.size()) {
                return (Contact) this.rocketFriends.get(i);
            }
            i -= this.rocketFriends.size();
        }
        if (!hasFriends() || i < 0 || i >= this.friendsCursor.getCount()) {
            return 0;
        }
        this.friendsCursor.moveToPosition(i);
        Contact contact = new Contact(this.friendsCursor.getLong(this.indexID), this.friendsCursor.getString(this.indexDisplayName), "", false, false);
        contact.setAvatar(this.friendsCursor.getString(this.indexThumbnail));
        return contact;
    }

    public void onBindViewHolder(android.support.v7.widget.RecyclerView.ViewHolder viewHolder, int i) {
        final ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        int itemViewType = getItemViewType(i);
        final Contact friend = getFriend(i);
        if (friend != null) {
            viewHolder2.name.setText(friend.getName());
            viewHolder2.avatar.setContact(friend);
            switch (itemViewType) {
                case 0:
                    viewHolder2.rocketIcon.setVisibility(8);
                    break;
                case 1:
                    viewHolder2.rocketIcon.setVisibility(0);
                    break;
                default:
                    break;
            }
            if (VERSION.SDK_INT >= 21) {
                viewHolder2.avatar.setTransitionName(TRANSITION_NAME_AVATAR.concat(String.valueOf(i)));
                viewHolder2.name.setTransitionName("name".concat(String.valueOf(i)));
                viewHolder2.root.setTransitionName(TRANSITION_NAME_ROOT.concat(String.valueOf(i)));
            }
            viewHolder2.root.setOnClickListener(new OnClickListener() {
                public void onClick(View view) {
                    if (FriendsAdapter.this.onContactClickListener != null) {
                        FriendsAdapter.this.onContactClickListener.call(viewHolder2, friend);
                    }
                }
            });
            UIHelper.addPadding(i, viewHolder2.itemView, new C17982(), new C17993());
        }
    }

    public int getItemCount() {
        int i = 0;
        if (this.friendsCursor == null) {
            return 0;
        }
        if (hasTransfers()) {
            i = 0 + this.transfers.size();
        }
        if (hasRocketFriends()) {
            i += this.rocketFriends.size();
        }
        if (hasFriends()) {
            i += this.friendsCursor.getCount();
        }
        return i;
    }

    protected boolean isLastInSection(int i) {
        if (this.friendsCursor == null) {
            return false;
        }
        if (hasTransfers() && this.transfers.size() - 1 == i) {
            return true;
        }
        if (hasRocketFriends() && (this.transfers.size() + this.rocketFriends.size()) - 1 == i) {
            return true;
        }
        if (hasFriends() && (this.rocketFriends.size() + this.friendsCursor.getCount()) - 1 == i) {
            return true;
        }
        return false;
    }

    protected boolean isFirstInSection(int i) {
        if (this.friendsCursor == null) {
            return false;
        }
        int i2;
        if (!hasTransfers()) {
            i2 = 0;
        } else if (i == 0) {
            return true;
        } else {
            i2 = this.transfers.size() + 0;
        }
        if (hasRocketFriends()) {
            if (i == i2) {
                return true;
            }
            i2 += this.rocketFriends.size();
        }
        if (hasFriends() && i == r0) {
            return true;
        }
        return false;
    }

    public int getItemViewType(int i) {
        return (!hasTransfers() || i >= this.transfers.size()) ? (!hasRocketFriends() || i >= this.transfers.size() + this.rocketFriends.size()) ? 0 : 1 : ((Contact) this.transfers.get(i)).isRocket() != 0 ? 1 : 0;
    }

    protected boolean hasTransfers() {
        return this.transfers.size() > 0;
    }

    protected boolean hasRocketFriends() {
        return this.rocketFriends.size() > 0;
    }

    protected boolean hasFriends() {
        if (this.friendsCursor != null && this.friendsCursor.getCount() > 0) {
            return true;
        }
        return false;
    }

    public int getFriendsCount() {
        if (hasFriends()) {
            return this.friendsCursor.getCount();
        }
        return 0;
    }

    public int getRocketFriendsCount() {
        if (hasRocketFriends()) {
            return this.rocketFriends.size();
        }
        return 0;
    }

    public int getTransfersCount() {
        if (hasTransfers()) {
            return this.transfers.size();
        }
        return 0;
    }

    public void setCursor(Cursor cursor) {
        if (cursor != null) {
            this.indexID = cursor.getColumnIndex("_id");
            this.indexThumbnail = cursor.getColumnIndex("photo_thumb_uri");
            this.indexDisplayName = cursor.getColumnIndex("display_name");
        }
        this.friendsCursor = cursor;
        notifyDataSetChanged();
    }

    public void setRocketFriends(List<Contact> list) {
        this.rocketFriends = list;
    }

    public void setTransfers(List<Contact> list) {
        this.transfers = list;
    }

    public Cursor getCursor() {
        return this.friendsCursor;
    }
}
