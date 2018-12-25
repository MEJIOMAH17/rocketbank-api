.class public final Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ProgressDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProgressDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProgressDialogFragment.kt\nru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment\n*L\n1#1,64:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment$Companion;

.field private static final MESSAGE_KEY:Ljava/lang/String; = "message"

.field private static final MESSAGE_TEXT_KEY:Ljava/lang/String; = "message_text"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->Companion:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static final newInstance(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->Companion:Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment$Companion;

    invoke-virtual {v0, p0}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment$Companion;->newInstance(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 13
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 14
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 18
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const v2, 0x7f110385

    if-eqz v1, :cond_2

    const-string v3, "message"

    .line 20
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "message"

    .line 21
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 22
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v3, "message_text"

    .line 24
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "message_text"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_3

    .line 27
    :cond_2
    invoke-virtual {p0, v2}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 29
    :cond_3
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->setCancelable(Z)V

    .line 41
    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/dialogs/ProgressDialogFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method
