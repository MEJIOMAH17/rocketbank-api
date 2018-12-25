package ru.rocketbank.r2d2.fragments.transfers;

import android.support.v7.widget.PopupMenu.OnMenuItemClickListener;
import android.support.v7.widget.RecyclerView;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewParent;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.CardModel;
import ru.rocketbank.r2d2.C0859R;
import ru.rocketbank.r2d2.widgets.dialog.RenameDialogFragment;

/* compiled from: TransfersFromCardFragment.kt */
final class TransfersFromCardFragment$createPopUpMenu$1 implements OnMenuItemClickListener {
    final /* synthetic */ CardModel $cardModel;
    final /* synthetic */ View $view;
    final /* synthetic */ TransfersFromCardFragment this$0;

    TransfersFromCardFragment$createPopUpMenu$1(TransfersFromCardFragment transfersFromCardFragment, View view, CardModel cardModel) {
        this.this$0 = transfersFromCardFragment;
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
            menuItem = this.this$0.getSupportFragmentManager();
            if (menuItem != null) {
                RecyclerView recyclerView = this.this$0.getRecyclerView();
                ViewParent parent = this.$view.getParent();
                Intrinsics.checkExpressionValueIsNotNull(parent, "view.parent");
                parent = parent.getParent();
                Intrinsics.checkExpressionValueIsNotNull(parent, "view.parent.parent");
                parent = parent.getParent();
                if (parent == null) {
                    throw new TypeCastException("null cannot be cast to non-null type android.view.View");
                }
                int indexOfChild = recyclerView.indexOfChild((View) parent);
                RenameDialogFragment instance = RenameDialogFragment.getInstance(this.$cardModel.getToken(), Boolean.FALSE, this.$cardModel.getTitle());
                instance.onRename(new C2014x1068d45(indexOfChild, this));
                instance.show(menuItem, null);
            }
            return true;
        }
    }
}
