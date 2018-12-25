package ru.rocketbank.r2d2.fragments.transfers;

import android.content.Context;
import android.os.Bundle;
import android.support.design.widget.FloatingActionButton;
import android.support.design.widget.Snackbar;
import android.support.v4.app.Fragment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.PopupMenu;
import android.support.v7.widget.PopupMenu.OnMenuItemClickListener;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import de.greenrobot.event.EventBus;
import java.util.ArrayList;
import ru.rocketbank.core.events.NextButtonEvent;
import ru.rocketbank.core.network.api.AccountApi;
import ru.rocketbank.core.network.model.TransfersModelUrFiz;
import ru.rocketbank.core.network.model.TransfersModelUrFiz.Remittance;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.fragments.NextButtonListener;
import ru.rocketbank.r2d2.fragments.RocketFragment;
import ru.rocketbank.r2d2.widgets.dialog.RenameDialogFragment.RecentTransferRenameDialogFragment;
import rx.Subscriber;
import rx.Subscription;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.schedulers.Schedulers;

public class RecentTransferFragment extends RocketFragment implements NextButtonListener {
    AccountApi accountApi;
    private Adapter adapter;
    private ArrayList<TransfersModelUrFiz> array;
    FloatingActionButton fabAdd;
    private Subscription recentSubscription;
    RecyclerView recyclerView;

    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.RecentTransferFragment$2 */
    class C15612 implements OnClickListener {
        C15612() {
        }

        public void onClick(View view) {
            ((TransfersToBankAccountContainer) RecentTransferFragment.this.getParentFragment()).goToBankTransferFragment();
        }
    }

    public interface ClickMoreListener {
        void onShowDialogRequested(View view);
    }

    /* renamed from: ru.rocketbank.r2d2.fragments.transfers.RecentTransferFragment$1 */
    class C16771 implements ClickMoreListener {
        C16771() {
        }

        public void onShowDialogRequested(final View view) {
            PopupMenu popupMenu = new PopupMenu(RecentTransferFragment.this.getActivity(), view.findViewById(C0859R.id.item_more));
            Menu menu = popupMenu.getMenu();
            menu.add(0, 0, 0, C0859R.string.edit);
            menu.add(0, 1, 0, C0859R.string.delete);
            popupMenu.setOnMenuItemClickListener(new OnMenuItemClickListener() {
                public boolean onMenuItemClick(MenuItem menuItem) {
                    switch (menuItem.getItemId()) {
                        case null:
                            menuItem = RecentTransferFragment.this.recyclerView.getChildPosition(view);
                            final Remittance remittance = ((TransfersModelUrFiz) RecentTransferFragment.this.array.get(menuItem)).getRemittance();
                            RecentTransferRenameDialogFragment instance = RecentTransferRenameDialogFragment.getInstance(remittance.getLinked_account().getToken(), remittance.getLinked_account().getTitle());
                            instance.onRename(new Action1<String>() {
                                public void call(String str) {
                                    remittance.getLinked_account().setTitle(str);
                                    RecentTransferFragment.this.adapter.notifyItemChanged(menuItem);
                                }
                            });
                            instance.show(RecentTransferFragment.this.getActivity().getSupportFragmentManager(), null);
                            return true;
                        case 1:
                            RecentTransferFragment.this.hide((TransfersModelUrFiz) RecentTransferFragment.this.array.get(RecentTransferFragment.this.recyclerView.getChildPosition(view)));
                            return true;
                        default:
                            return null;
                    }
                }
            });
            popupMenu.show();
        }
    }

    protected class Adapter extends android.support.v7.widget.RecyclerView.Adapter<ViewHolder> {
        private ArrayList<TransfersModelUrFiz> array;
        private ClickMoreListener clickMoreListener;
        private Context context;
        private LayoutInflater layoutInflater;

        protected class ViewHolder extends android.support.v7.widget.RecyclerView.ViewHolder {
            ImageView imgLogo;
            ImageView imgMore;
            TextView tvName;
            TextView tvNumberCard;

            public ViewHolder(final View view) {
                super(view);
                this.imgLogo = (ImageView) view.findViewById(C0859R.id.logo);
                view.findViewById(C0859R.id.secureDots).setVisibility(8);
                this.tvName = (TextView) view.findViewById(C0859R.id.tv_name);
                this.tvNumberCard = (TextView) view.findViewById(C0859R.id.tv_number_card);
                this.imgMore = (ImageView) view.findViewById(C0859R.id.item_more);
                if (Adapter.this.clickMoreListener != null) {
                    this.imgMore.setOnClickListener(new OnClickListener(Adapter.this) {
                        public void onClick(View view) {
                            Adapter.this.clickMoreListener.onShowDialogRequested(view);
                        }
                    });
                }
            }

            public void bind(final TransfersModelUrFiz transfersModelUrFiz) {
                final Remittance remittance = transfersModelUrFiz.getRemittance();
                if (remittance != null) {
                    if (remittance.getIcon_url() != null) {
                        Glide.with(Adapter.this.context).load(remittance.getIcon_url()).into(this.imgLogo);
                    } else {
                        Glide.with(Adapter.this.context).load(Integer.valueOf(C0859R.drawable.ic_perevody_unknown_card)).into(this.imgLogo);
                    }
                    this.tvName.setText(remittance.getLinked_account().getTitle());
                    this.tvNumberCard.setText(remittance.getLinked_account().getFormatted_number());
                    this.itemView.setOnClickListener(new OnClickListener() {
                        public void onClick(View view) {
                            BankAmountActivity.startActivity(remittance.toRemittanceOutgoing(transfersModelUrFiz.getRecipientType()), ViewHolder.this.itemView.getContext());
                        }
                    });
                }
            }
        }

        public Adapter(Context context, ArrayList<TransfersModelUrFiz> arrayList, ClickMoreListener clickMoreListener) {
            this.array = arrayList;
            this.context = context;
            this.clickMoreListener = clickMoreListener;
            this.layoutInflater = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new ViewHolder(this.layoutInflater.inflate(C0859R.layout.list_item_template_transfer, viewGroup, false));
        }

        public void onBindViewHolder(ViewHolder viewHolder, int i) {
            viewHolder.bind((TransfersModelUrFiz) this.array.get(i));
        }

        public int getItemCount() {
            return this.array.size();
        }
    }

    public void onNextButtonClick() {
    }

    public static Fragment newInstance(ArrayList<TransfersModelUrFiz> arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("array", arrayList);
        arrayList = new RecentTransferFragment();
        arrayList.setArguments(bundle);
        return arrayList;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater = layoutInflater.inflate(C0859R.layout.transfer_templates_fragment, viewGroup, false);
        this.array = getArguments().getParcelableArrayList("array");
        this.accountApi = getInjector().getAccountApi();
        this.recyclerView = (RecyclerView) layoutInflater.findViewById(C0859R.id.recyclerView);
        this.fabAdd = (FloatingActionButton) layoutInflater.findViewById(C0859R.id.fab);
        return layoutInflater;
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.adapter = new Adapter(getActivity(), this.array, new C16771());
        this.recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
        this.recyclerView.setAdapter(this.adapter);
        this.fabAdd.setOnClickListener(new C15612());
    }

    private void hide(final TransfersModelUrFiz transfersModelUrFiz) {
        showSpinner();
        this.recentSubscription = this.accountApi.hideLinkedAccount(transfersModelUrFiz.getRemittance().getLinked_account().getToken(), "").subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Subscriber<Object>() {
            public void onCompleted() {
            }

            public void onError(Throwable th) {
                StringBuilder stringBuilder = new StringBuilder("Failed to send delete template ");
                stringBuilder.append(transfersModelUrFiz.getHappened_at());
                Log.e("", stringBuilder.toString());
                RecentTransferFragment.this.hideSpinner();
                Snackbar.make(RecentTransferFragment.this.getView(), C0859R.string.no_luck_try_again_later, 0).show();
            }

            public void onNext(Object obj) {
                RecentTransferFragment.this.array.remove(transfersModelUrFiz);
                RecentTransferFragment.this.adapter.notifyDataSetChanged();
                RecentTransferFragment.this.hideSpinner();
            }
        });
    }

    public void onResume() {
        super.onResume();
        updateNextButton(getParentFragment() == null ? this : getParentFragment());
    }

    public void onPause() {
        super.onPause();
        unsubscribe(this.recentSubscription);
    }

    public void updateNextButton(Fragment fragment) {
        EventBus.getDefault().post(new NextButtonEvent(fragment, false, Integer.valueOf(4), null));
    }
}
