package ru.rocketbank.r2d2.fragments.refill.card;

import android.support.v7.widget.PopupMenu.OnMenuItemClickListener;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewParent;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.CardModel;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.widgets.dialog.RenameDialogFragment;
import rx.functions.Action1;

/* compiled from: RefillFromCardFragment.kt */
final class RefillFromCardFragment$createPopUpMenu$1 implements OnMenuItemClickListener {
    final /* synthetic */ CardModel $cardModel;
    final /* synthetic */ View $view;
    final /* synthetic */ RefillFromCardFragment this$0;

    RefillFromCardFragment$createPopUpMenu$1(RefillFromCardFragment refillFromCardFragment, View view, CardModel cardModel) {
        this.this$0 = refillFromCardFragment;
        this.$view = view;
        this.$cardModel = cardModel;
    }

    public final boolean onMenuItemClick(MenuItem menuItem) {
        Intrinsics.checkExpressionValueIsNotNull(menuItem, "item");
        menuItem = menuItem.getItemId();
        if (menuItem == C0859R.id.item_delete) {
            this.this$0.hideCard(this.$cardModel);
            return true;
        } else if (menuItem != C0859R.id.item_rename) {
            return null;
        } else {
            menuItem = this.this$0.recyclerView;
            if (menuItem == null) {
                Intrinsics.throwNpe();
            }
            ViewParent parent = this.$view.getParent();
            Intrinsics.checkExpressionValueIsNotNull(parent, "view.parent");
            parent = parent.getParent();
            Intrinsics.checkExpressionValueIsNotNull(parent, "view.parent.parent");
            parent = parent.getParent();
            if (parent == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.view.View");
            }
            menuItem = menuItem.indexOfChild((View) parent);
            RenameDialogFragment instance = RenameDialogFragment.getInstance(this.$cardModel.getToken(), Boolean.FALSE, this.$cardModel.getTitle());
            instance.onRename(new Action1<String>() {
                public final void call(String str) {
                    this.$cardModel.setTitle(str);
                    str = this.this$0.listAdapter;
                    if (str == null) {
                        Intrinsics.throwNpe();
                    }
                    str.notifyItemChanged(menuItem);
                }
            });
            instance.show(this.this$0.getSupportFragmentManager(), null);
            return true;
        }
    }
}
