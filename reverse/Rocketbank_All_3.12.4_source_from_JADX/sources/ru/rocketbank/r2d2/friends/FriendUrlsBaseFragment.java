package ru.rocketbank.r2d2.friends;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.share.internal.ShareConstants;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import ru.rocketbank.core.model.transfers.friend.FriendTransfersResponseUrls;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.fragments.RocketFragment;

public abstract class FriendUrlsBaseFragment extends RocketFragment {
    private FriendTransfersResponseUrls _data;

    /* renamed from: ru.rocketbank.r2d2.friends.FriendUrlsBaseFragment$1 */
    class C15731 implements OnClickListener {
        C15731() {
        }

        public void onClick(android.view.View r3) {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
            /*
            r2 = this;
            r3 = ru.rocketbank.r2d2.friends.FriendUrlsBaseFragment.this;	 Catch:{ Exception -> 0x001d }
            r3 = r3.getActivity();	 Catch:{ Exception -> 0x001d }
            r0 = "transfer_url";	 Catch:{ Exception -> 0x001d }
            r1 = ru.rocketbank.r2d2.friends.FriendUrlsBaseFragment.this;	 Catch:{ Exception -> 0x001d }
            r1 = r1._data;	 Catch:{ Exception -> 0x001d }
            r1 = r1.getDefaultUrl();	 Catch:{ Exception -> 0x001d }
            ru.rocketbank.r2d2.Utils.copyTextToClipboard(r3, r0, r1);	 Catch:{ Exception -> 0x001d }
            r3 = ru.rocketbank.r2d2.friends.FriendUrlsBaseFragment.this;	 Catch:{ Exception -> 0x001d }
            r0 = "Ссылка скопирована в буфер обмена.";	 Catch:{ Exception -> 0x001d }
            r3.showAlert(r0);	 Catch:{ Exception -> 0x001d }
            return;
        L_0x001d:
            r3 = ru.rocketbank.r2d2.friends.FriendUrlsBaseFragment.this;
            r0 = "Не удалось скопировать ссылку.";
            r3.showAlert(r0);
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.friends.FriendUrlsBaseFragment.1.onClick(android.view.View):void");
        }
    }

    protected abstract String createMessageBody(long j, String str);

    protected abstract String createMessageSubject(long j);

    protected abstract String getInfoHeader();

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view;
        LayoutInflater layoutInflater2 = layoutInflater;
        View inflate = layoutInflater2.inflate(C0859R.layout.fragment_friend_urls_base, viewGroup, false);
        double d = getArguments().getDouble("amount");
        this._data = (FriendTransfersResponseUrls) getArguments().getSerializable(ShareConstants.WEB_DIALOG_PARAM_DATA);
        TextView textView = (TextView) inflate.findViewById(C0859R.id.textview_transfer_url);
        textView.setText(this._data.getDefaultUrl());
        textView.setOnClickListener(new C15731());
        Map hashMap = this._data.getPhones() == null ? new HashMap() : r6._data.getPhones();
        Map hashMap2 = r6._data.getEmails() == null ? new HashMap() : r6._data.getEmails();
        if (hashMap.size() == 0 && hashMap2.size() == 0) {
            inflate.findViewById(C0859R.id.layout_destinations_group).setVisibility(8);
            view = inflate;
        } else {
            int i;
            int i2;
            ViewGroup viewGroup2;
            int i3;
            final double d2;
            final Map map;
            int i4;
            final String str;
            LinearLayout linearLayout = (LinearLayout) inflate.findViewById(C0859R.id.layout_destinations);
            Iterator it = hashMap.keySet().iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                i = C0859R.id.textview_value;
                i2 = C0859R.id.imageview_icon;
                viewGroup2 = null;
                i3 = C0859R.layout.transfer_destination_item;
                if (!hasNext) {
                    break;
                }
                String str2 = (String) it.next();
                View view2 = (LinearLayout) layoutInflater2.inflate(C0859R.layout.transfer_destination_item, null);
                ((ImageView) view2.findViewById(C0859R.id.imageview_icon)).setImageResource(C0859R.drawable.transfers_url_sms_icon);
                ((TextView) view2.findViewById(C0859R.id.textview_value)).setText(str2);
                View view3 = view2;
                d2 = d;
                view = inflate;
                C15742 c15742 = r0;
                map = hashMap;
                Map map2 = hashMap;
                i4 = -1;
                str = str2;
                C15742 c157422 = new OnClickListener() {
                    public void onClick(android.view.View r7) {
                        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
                        /*
                        r6 = this;
                        r0 = 2131297220; // 0x7f0903c4 float:1.8212379E38 double:1.0530007375E-314;
                        r7 = r7.findViewById(r0);
                        r7 = (android.widget.TextView) r7;
                        r0 = new android.content.Intent;
                        r1 = "android.intent.action.SENDTO";
                        r2 = "smsto";
                        r7 = r7.getText();
                        r7 = r7.toString();
                        r3 = 0;
                        r7 = android.net.Uri.fromParts(r2, r7, r3);
                        r0.<init>(r1, r7);
                        r7 = "sms_body";
                        r1 = ru.rocketbank.r2d2.friends.FriendUrlsBaseFragment.this;
                        r2 = r2;
                        r2 = (long) r2;
                        r4 = r4;
                        r5 = r5;
                        r4 = r4.get(r5);
                        r4 = (java.lang.String) r4;
                        r1 = r1.createMessageBody(r2, r4);
                        r0.putExtra(r7, r1);
                        r7 = ru.rocketbank.r2d2.friends.FriendUrlsBaseFragment.this;	 Catch:{ ActivityNotFoundException -> 0x0041 }
                        r7 = r7.getActivity();	 Catch:{ ActivityNotFoundException -> 0x0041 }
                        r7.startActivity(r0);	 Catch:{ ActivityNotFoundException -> 0x0041 }
                        return;
                    L_0x0041:
                        r7 = ru.rocketbank.r2d2.friends.FriendUrlsBaseFragment.this;
                        r0 = "Пожалуйста, установите программу для отправки SMS.";
                        r7.showAlert(r0);
                        return;
                        */
                        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.friends.FriendUrlsBaseFragment.2.onClick(android.view.View):void");
                    }
                };
                view3.setOnClickListener(c15742);
                linearLayout.addView(view3, new LayoutParams(i4, Utils.dpToPx(getActivity(), 50)));
                if (it.hasNext()) {
                    linearLayout.addView(createLineView());
                }
                inflate = view;
                hashMap = map2;
            }
            i4 = -1;
            view = inflate;
            if (hashMap2.size() > 0) {
                linearLayout.addView(createLineView());
            }
            Iterator it2 = hashMap2.keySet().iterator();
            while (it2.hasNext()) {
                str = (String) it2.next();
                LinearLayout linearLayout2 = (LinearLayout) layoutInflater2.inflate(i3, viewGroup2);
                ((ImageView) linearLayout2.findViewById(i2)).setImageResource(C0859R.drawable.transfers_url_email_icon);
                ((TextView) linearLayout2.findViewById(i)).setText(str);
                int i5 = i3;
                int i6 = i2;
                ViewGroup viewGroup3 = viewGroup2;
                d2 = d;
                int i7 = i;
                map = hashMap2;
                linearLayout2.setOnClickListener(new OnClickListener() {
                    public void onClick(android.view.View r7) {
                        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
                        /*
                        r6 = this;
                        r0 = 2131297220; // 0x7f0903c4 float:1.8212379E38 double:1.0530007375E-314;
                        r7 = r7.findViewById(r0);
                        r7 = (android.widget.TextView) r7;
                        r0 = new android.content.Intent;
                        r1 = "android.intent.action.SEND";
                        r0.<init>(r1);
                        r1 = "message/rfc822";
                        r0.setType(r1);
                        r1 = "android.intent.extra.SUBJECT";
                        r2 = ru.rocketbank.r2d2.friends.FriendUrlsBaseFragment.this;
                        r3 = r2;
                        r3 = (long) r3;
                        r2 = r2.createMessageSubject(r3);
                        r0.putExtra(r1, r2);
                        r1 = "android.intent.extra.EMAIL";
                        r2 = 1;
                        r2 = new java.lang.String[r2];
                        r7 = r7.getText();
                        r7 = r7.toString();
                        r3 = 0;
                        r2[r3] = r7;
                        r0.putExtra(r1, r2);
                        r7 = "android.intent.extra.TEXT";
                        r1 = ru.rocketbank.r2d2.friends.FriendUrlsBaseFragment.this;
                        r2 = r2;
                        r2 = (long) r2;
                        r4 = r4;
                        r5 = r5;
                        r4 = r4.get(r5);
                        r4 = (java.lang.String) r4;
                        r1 = r1.createMessageBody(r2, r4);
                        r0.putExtra(r7, r1);
                        r7 = ru.rocketbank.r2d2.friends.FriendUrlsBaseFragment.this;	 Catch:{ ActivityNotFoundException -> 0x005e }
                        r7 = r7.getActivity();	 Catch:{ ActivityNotFoundException -> 0x005e }
                        r1 = "Отправить ссылку";	 Catch:{ ActivityNotFoundException -> 0x005e }
                        r0 = android.content.Intent.createChooser(r0, r1);	 Catch:{ ActivityNotFoundException -> 0x005e }
                        r7.startActivity(r0);	 Catch:{ ActivityNotFoundException -> 0x005e }
                        return;
                    L_0x005e:
                        r7 = ru.rocketbank.r2d2.friends.FriendUrlsBaseFragment.this;
                        r0 = "Пожалуйста, установите почтовый клиент.";
                        r7.showAlert(r0);
                        return;
                        */
                        throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.r2d2.friends.FriendUrlsBaseFragment.3.onClick(android.view.View):void");
                    }
                });
                linearLayout.addView(linearLayout2, new LayoutParams(i4, Utils.dpToPx(getActivity(), 50)));
                if (it2.hasNext()) {
                    linearLayout.addView(createLineView());
                }
                i3 = i5;
                viewGroup2 = viewGroup3;
                i2 = i6;
                i = i7;
            }
        }
        View view4 = view;
        ((TextView) view4.findViewById(C0859R.id.fragment_urls_base_info_header)).setText(getInfoHeader());
        return view4;
    }

    public void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(C0859R.menu.fragment_userfeed_transfers_friend_amount, menu);
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != C0859R.id.action_share_transfer_url) {
            return null;
        }
        menuItem = this._data.getDefaultUrl();
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.SUBJECT", "Ссылка для перевода");
        intent.putExtra("android.intent.extra.TEXT", menuItem);
        getActivity().startActivity(Intent.createChooser(intent, "Поделиться ссылкой"));
        return true;
    }

    private View createLineView() {
        View view = new View(getActivity());
        view.setLayoutParams(new LayoutParams(-1, Utils.dpToPx(getActivity(), 1)));
        return view;
    }
}
