.class public final Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ChangeTextDialogFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/change/ChangeTextHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment$ChangeTextListener;,
        Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChangeTextDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChangeTextDialogFragment.kt\nru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment\n*L\n1#1,108:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public authorization:Lru/rocketbank/core/user/Authorization;

.field private changeTextListener:Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment$ChangeTextListener;

.field private dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

.field private layoutRenameBinding:Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->Companion:Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final dismiss()V
    .locals 1

    .line 61
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/mikepenz/materialize/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    .line 62
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public final getAuthorization()Lru/rocketbank/core/user/Authorization;
    .locals 2

    .line 22
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v0, :cond_0

    const-string v1, "authorization"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getChangeTextListener()Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment$ChangeTextListener;
    .locals 1

    .line 31
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->changeTextListener:Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment$ChangeTextListener;

    return-object v0
.end method

.method protected final hideSpinner()V
    .locals 1

    .line 76
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->dismiss()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->dialogSpinner:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    :cond_1
    return-void
.end method

.method public final onCancelledClicked()V
    .locals 0

    .line 94
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->dismiss()V

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const-string v0, "dialog"

    .line 72
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance p3, Lru/rocketbank/r2d2/data/binding/change/ChangeTextDialog;

    invoke-direct {p3}, Lru/rocketbank/r2d2/data/binding/change/ChangeTextDialog;-><init>()V

    const/4 v0, 0x0

    .line 45
    invoke-static {p1, p2, v0}, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;

    move-result-object p1

    const-string p2, "LayoutDialogChangeBindin\u2026flater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->layoutRenameBinding:Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;

    .line 46
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->layoutRenameBinding:Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;

    if-nez p1, :cond_0

    const-string p2, "layoutRenameBinding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object p2, p0

    check-cast p2, Lru/rocketbank/r2d2/data/binding/change/ChangeTextHandler;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/change/ChangeTextHandler;)V

    .line 47
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->layoutRenameBinding:Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;

    if-nez p1, :cond_1

    const-string p2, "layoutRenameBinding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, p3}, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->setData(Lru/rocketbank/r2d2/data/binding/change/ChangeTextDialog;)V

    .line 49
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->layoutRenameBinding:Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;

    if-nez p1, :cond_2

    const-string p2, "layoutRenameBinding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->hideSpinner()V

    .line 36
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/mikepenz/materialize/util/KeyboardUtil;->hideKeyboard(Landroid/app/Activity;)V

    .line 38
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->changeTextListener:Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment$ChangeTextListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment$ChangeTextListener;->onDismiss()V

    .line 40
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public final onOkClicked()V
    .locals 2

    .line 83
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->changeTextListener:Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment$ChangeTextListener;

    if-eqz v0, :cond_4

    .line 84
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->layoutRenameBinding:Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;

    if-nez v0, :cond_0

    const-string v1, "layoutRenameBinding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/LayoutDialogChangeBinding;->name:Lru/rocketbank/core/widgets/RocketEditText;

    const-string v1, "layoutRenameBinding.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->changeTextListener:Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment$ChangeTextListener;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-interface {v1, v0}, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment$ChangeTextListener;->validateText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->changeTextListener:Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment$ChangeTextListener;

    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-interface {v1, v0}, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment$ChangeTextListener;->onTextChanged(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->dismiss()V

    :cond_4
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->getArguments()Landroid/os/Bundle;

    .line 56
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method public final setAuthorization(Lru/rocketbank/core/user/Authorization;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method public final setChangeTextListener(Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment$ChangeTextListener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment;->changeTextListener:Lru/rocketbank/r2d2/widgets/dialog/ChangeTextDialogFragment$ChangeTextListener;

    return-void
.end method
