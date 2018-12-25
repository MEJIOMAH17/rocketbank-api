package ru.rocketbank.r2d2.friends;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.TextView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.manager.AnalyticsManager;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.contact.Contact;
import ru.rocketbank.core.model.contact.InvitedFriend;
import ru.rocketbank.core.model.contact.ServerContact;
import ru.rocketbank.core.model.enums.Cobrand;
import ru.rocketbank.core.model.enums.Currency;
import ru.rocketbank.core.realm.UserData;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.core.widgets.ContactAvatarView;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.friends.SwipeTouchListener.DismissCallbacks;
import ru.rocketbank.r2d2.helpers.UIHelper;
import rx.functions.Action2;
import rx.functions.Func1;

public class InviteFriendsAdapter extends FriendsAdapter {
    private static final int ITEM_VIEW_TYPE_FRIEND_INVITED = 5;
    private static final int ITEM_VIEW_TYPE_HEADER = 4;
    AnalyticsManager analyticsManager;
    Authorization authorization;
    private final View header;
    private List<InvitedFriend> invitations = Collections.emptyList();
    MoneyFormatter moneyFormatter;
    private Contact selectedContact = null;
    private ViewGroup selectedView;

    /* renamed from: ru.rocketbank.r2d2.friends.InviteFriendsAdapter$4 */
    class C16834 implements DismissCallbacks {
        public boolean canDismiss(Object obj) {
            return true;
        }

        C16834() {
        }

        public void onDismiss(View view, Object obj) {
            ((View) InviteFriendsAdapter.this.selectedView.getParent()).setBackgroundColor(-1);
            view.setVisibility(8);
            InviteFriendsAdapter.this.selectedView = null;
            InviteFriendsAdapter.this.selectedContact = null;
        }
    }

    public static class HeaderViewHolder extends ViewHolder {
        public HeaderViewHolder(View view) {
            super(view);
        }
    }

    public static class InviteViewHolder extends ViewHolder {
        ContactAvatarView avatar;
        View buttonInvite;
        ImageButton buttonInviteEmail;
        ImageButton buttonInviteSMS;
        ViewGroup content;
        ViewGroup menu;
        TextView name;

        public InviteViewHolder(View view) {
            super(view);
            this.name = (TextView) view.findViewById(C0859R.id.name);
            this.content = (ViewGroup) view.findViewById(C0859R.id.content);
            this.avatar = (ContactAvatarView) view.findViewById(C0859R.id.avatar);
            this.buttonInvite = view.findViewById(C0859R.id.buttonInvite);
            this.buttonInviteSMS = (ImageButton) view.findViewById(C0859R.id.buttonInviteSMS);
            this.buttonInviteEmail = (ImageButton) view.findViewById(C0859R.id.buttonInviteEmail);
            this.menu = (ViewGroup) view.findViewById(C0859R.id.menu);
        }
    }

    public static class InvitedViewHolder extends ViewHolder {
        ContactAvatarView avatar;
        TextView description;
        TextView name;
        TextView revenue;

        public InvitedViewHolder(View view) {
            super(view);
            this.name = (TextView) view.findViewById(C0859R.id.name);
            this.avatar = (ContactAvatarView) view.findViewById(C0859R.id.avatar);
            this.revenue = (TextView) view.findViewById(C0859R.id.revenue);
            this.description = (TextView) view.findViewById(C0859R.id.description);
        }
    }

    /* renamed from: ru.rocketbank.r2d2.friends.InviteFriendsAdapter$1 */
    class C18021 implements Func1<Integer, Boolean> {
        C18021() {
        }

        public Boolean call(Integer num) {
            return Boolean.valueOf(InviteFriendsAdapter.this.isFirstInSection(num.intValue()));
        }
    }

    /* renamed from: ru.rocketbank.r2d2.friends.InviteFriendsAdapter$2 */
    class C18032 implements Func1<Integer, Boolean> {
        C18032() {
        }

        public Boolean call(Integer num) {
            return Boolean.valueOf(InviteFriendsAdapter.this.isLastInSection(num.intValue()));
        }
    }

    /* renamed from: ru.rocketbank.r2d2.friends.InviteFriendsAdapter$7 */
    class C18047 implements Func1<Integer, Boolean> {
        C18047() {
        }

        public Boolean call(Integer num) {
            return Boolean.valueOf(InviteFriendsAdapter.this.isFirstInSection(num.intValue()));
        }
    }

    /* renamed from: ru.rocketbank.r2d2.friends.InviteFriendsAdapter$8 */
    class C18058 implements Func1<Integer, Boolean> {
        C18058() {
        }

        public Boolean call(Integer num) {
            return Boolean.valueOf(InviteFriendsAdapter.this.isLastInSection(num.intValue()));
        }
    }

    protected boolean hasRocketFriends() {
        return false;
    }

    public InviteFriendsAdapter(Action2<FriendsAdapter.ViewHolder, Contact> action2, View view) {
        super(action2);
        this.header = view;
        this.authorization = RocketApplication.Companion.getInjector().getAuthorization();
        this.moneyFormatter = RocketApplication.Companion.getInjector().getMoneyFormatter();
        this.analyticsManager = RocketApplication.Companion.getInjector().getAnalyticsManager();
    }

    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 4) {
            return new HeaderViewHolder(this.header);
        }
        if (i == 5) {
            return new InvitedViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C0859R.layout.friend_invited_item, viewGroup, false));
        }
        return new InviteViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C0859R.layout.friend_invite_item, viewGroup, false));
    }

    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        int itemViewType = getItemViewType(i);
        if (itemViewType != 4) {
            if (itemViewType == 5) {
                InvitedViewHolder invitedViewHolder = (InvitedViewHolder) viewHolder;
                i--;
                InvitedFriend invitedFriend = (InvitedFriend) this.invitations.get(i);
                if (invitedFriend != null) {
                    ServerContact user = invitedFriend.getUser();
                    invitedViewHolder.name.setText(String.format("%s %s", new Object[]{user.getFirstName(), user.getLastName()}));
                    invitedViewHolder.avatar.setContact(user.getFirstName(), user.getLastName(), user.getAvatar());
                    if (invitedFriend.getDisplayStatus() == null || invitedFriend.getDisplayStatus().isEmpty()) {
                        invitedViewHolder.description.setVisibility(8);
                    } else {
                        invitedViewHolder.description.setVisibility(0);
                        invitedViewHolder.description.setText(invitedFriend.getDisplayStatus());
                    }
                    double revenue = invitedFriend.getRevenue();
                    if (Double.compare(revenue, 0.0d) != 0) {
                        invitedViewHolder.revenue.setText(this.moneyFormatter.format(revenue, Currency.ROUBLE, false));
                        invitedViewHolder.revenue.setVisibility(0);
                    } else {
                        invitedViewHolder.revenue.setVisibility(4);
                    }
                    UIHelper.addPadding(i, invitedViewHolder.itemView, new C18021(), new C18032());
                    return;
                }
                return;
            }
            final InviteViewHolder inviteViewHolder = (InviteViewHolder) viewHolder;
            final Contact friend = getFriend((i - this.invitations.size()) - 1);
            if (friend != null) {
                inviteViewHolder.name.setText(String.format("%s %s", new Object[]{friend.getFirstName(), friend.getLastName()}));
                inviteViewHolder.avatar.setContact(friend);
                inviteViewHolder.buttonInvite.setVisibility(0);
                final int color = inviteViewHolder.itemView.getResources().getColor(C0859R.color.invite_friend_item_selected_color);
                if (this.selectedContact == null || this.selectedContact.getId() != friend.getId()) {
                    inviteViewHolder.menu.setVisibility(4);
                    inviteViewHolder.content.setBackgroundColor(-1);
                } else {
                    inviteViewHolder.menu.setVisibility(0);
                    showInviteButtons(inviteViewHolder, this.selectedContact);
                    this.selectedView = inviteViewHolder.menu;
                    inviteViewHolder.content.setBackgroundColor(color);
                }
                inviteViewHolder.buttonInvite.setOnClickListener(new OnClickListener() {

                    /* renamed from: ru.rocketbank.r2d2.friends.InviteFriendsAdapter$3$1 */
                    class C15791 extends AnimatorListenerAdapter {
                        C15791() {
                        }

                        public void onAnimationEnd(Animator animator) {
                            if (InviteFriendsAdapter.this.selectedView != null) {
                                InviteFriendsAdapter.this.selectedView.setTranslationX(BitmapDescriptorFactory.HUE_RED);
                            }
                        }
                    }

                    public void onClick(View view) {
                        friend.updateContacts(inviteViewHolder.buttonInvite.getContext());
                        if (InviteFriendsAdapter.this.selectedView != null) {
                            InviteFriendsAdapter.this.selectedView.animate().translationX((float) InviteFriendsAdapter.this.selectedView.getWidth()).setDuration((long) InviteFriendsAdapter.this.selectedView.getContext().getResources().getInteger(17694721));
                            ((View) InviteFriendsAdapter.this.selectedView.getParent()).setBackgroundColor(-1);
                        }
                        InviteFriendsAdapter.this.selectedView = inviteViewHolder.menu;
                        InviteFriendsAdapter.this.selectedContact = friend;
                        int i = 1;
                        int i2 = (friend.getEmails() == null || friend.getEmails().size() <= 0) ? 0 : 1;
                        if (friend.getPhones() == null || friend.getPhones().size() <= 0) {
                            i = 0;
                        }
                        if (i2 != 0 && i != 0) {
                            InviteFriendsAdapter.this.showInviteButtons(inviteViewHolder, InviteFriendsAdapter.this.selectedContact);
                            view = InviteFriendsAdapter.this.selectedView.getContext().getResources().getInteger(17694721);
                            InviteFriendsAdapter.this.selectedView.setTranslationX((float) InviteFriendsAdapter.this.selectedView.getWidth());
                            InviteFriendsAdapter.this.selectedView.setVisibility(0);
                            InviteFriendsAdapter.this.selectedView.animate().translationX(BitmapDescriptorFactory.HUE_RED).setDuration((long) view).setListener(new C15791());
                            inviteViewHolder.content.setBackgroundColor(color);
                        } else if (i2 != 0) {
                            InviteFriendsAdapter.this.onSendEmailClick(view, friend);
                        } else {
                            if (i != 0) {
                                InviteFriendsAdapter.this.onSendSmsClick(view, friend);
                            }
                        }
                    }
                });
                inviteViewHolder.menu.setOnTouchListener(new SwipeTouchListener(inviteViewHolder.menu, Integer.valueOf(inviteViewHolder.menu.getId()), new C16834()));
                inviteViewHolder.buttonInviteSMS.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        InviteFriendsAdapter.this.onSendSmsClick(view, friend);
                    }
                });
                inviteViewHolder.buttonInviteEmail.setOnClickListener(new OnClickListener() {
                    public void onClick(View view) {
                        InviteFriendsAdapter.this.onSendEmailClick(view, friend);
                    }
                });
                UIHelper.addPadding(i - 1, inviteViewHolder.itemView, new C18047(), new C18058());
            }
        }
    }

    protected boolean isFirstInSection(int i) {
        if (this.friendsCursor == null) {
            return false;
        }
        if (hasInvitations() && i == 0) {
            return true;
        }
        return super.isFirstInSection(i - this.invitations.size());
    }

    protected boolean isLastInSection(int i) {
        if (this.friendsCursor == null) {
            return false;
        }
        if (hasInvitations() && this.invitations.size() - 1 == i) {
            return true;
        }
        return super.isLastInSection(i - this.invitations.size());
    }

    private void showInviteButtons(InviteViewHolder inviteViewHolder, Contact contact) {
        int i = 1;
        int i2 = 0;
        int i3 = (contact.getEmails() == null || contact.getEmails().size() <= 0) ? 0 : 1;
        if (contact.getPhones() == null || contact.getPhones().size() <= null) {
            i = 0;
        }
        inviteViewHolder.buttonInviteEmail.setVisibility(i3 != 0 ? 0 : 8);
        inviteViewHolder = inviteViewHolder.buttonInviteSMS;
        if (i == 0) {
            i2 = 8;
        }
        inviteViewHolder.setVisibility(i2);
    }

    public void onSendSmsClick(final View view, Contact contact) {
        contact = contact.getPhones();
        if (contact.size() == 1) {
            shareViaSms(view.getContext(), (String) contact.get(0));
        } else {
            Builder builder = new Builder(view.getContext());
            builder.setItems((CharSequence[]) contact.toArray(new String[contact.size()]), new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    InviteFriendsAdapter.this.shareViaSms(view.getContext(), (String) contact.get(i));
                }
            });
            builder.create().show();
        }
        RocketApplication.Companion.getInjector().getAnalyticsManager().invitesFriend();
    }

    public void onSendEmailClick(final View view, Contact contact) {
        contact = contact.getEmails();
        if (contact.size() == 1) {
            shareViaEmail(view.getContext(), (String) contact.get(0));
        } else {
            Builder builder = new Builder(view.getContext());
            builder.setItems((CharSequence[]) contact.toArray(new String[contact.size()]), new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int i) {
                    InviteFriendsAdapter.this.shareViaEmail(view.getContext(), (String) contact.get(i));
                }
            });
            builder.create().show();
        }
        this.analyticsManager.invitesFriend();
    }

    private void shareViaSms(Context context, String str) {
        Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse("smsto:".concat(String.valueOf(str))));
        intent.putExtra("sms_body", getShareText(context));
        context.startActivity(intent);
    }

    private void shareViaEmail(Context context, String str) {
        Intent intent = new Intent("android.intent.action.SENDTO", Uri.fromParts("mailto", str, null));
        intent.putExtra("android.intent.extra.SUBJECT", "Привет!");
        intent.putExtra("android.intent.extra.TEXT", getShareText(context));
        context.startActivity(intent);
    }

    private String getShareText(Context context) {
        UserModel userImmediate = this.authorization.getUserImmediate();
        UserData userData = this.authorization.getUserData();
        Intrinsics.checkParameterIsNotNull(userData, "userData");
        String quantityString = context.getResources().getQuantityString(Cobrand.Companion.fromCobrandName(userData.realmGet$cobrandName()).getMoney(), userImmediate.getInvitationRevenue());
        Object[] objArr = new Object[2];
        objArr[0] = userImmediate.getInvites().getUrl();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(Integer.toString(userImmediate.getInvitationRevenue()));
        stringBuilder.append(" ");
        stringBuilder.append(quantityString);
        objArr[1] = stringBuilder.toString();
        return context.getString(C0859R.string.ifa_share_message, objArr);
    }

    public int getItemViewType(int i) {
        if (i == 0) {
            return 4;
        }
        if (!hasInvitations() || i - 1 >= this.invitations.size()) {
            return super.getItemViewType(i - 1);
        }
        return 5;
    }

    private boolean hasInvitations() {
        return this.invitations.size() > 0;
    }

    public int getInvitationsCount() {
        return this.invitations.size();
    }

    public int getItemCount() {
        int itemCount = super.getItemCount();
        if (hasInvitations()) {
            itemCount += getInvitationsCount();
        }
        return itemCount + 1;
    }

    public Contact getFriend(int i) {
        return super.getFriend(i);
    }

    public void setInvitations(List<InvitedFriend> list) {
        this.invitations = list;
    }
}
