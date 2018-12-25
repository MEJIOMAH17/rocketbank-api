.class public final Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "SendMoneyToContactActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity$Companion;
    }
.end annotation


# static fields
.field private static final CONTACT_EXTRA:Ljava/lang/String; = "contact"

.field public static final Companion:Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity$Companion;


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public btnNext:Landroid/widget/Button;

.field public toolbar:Landroid/support/v7/widget/Toolbar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->Companion:Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getCONTACT_EXTRA$cp()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->CONTACT_EXTRA:Ljava/lang/String;

    return-object v0
.end method

.method private final setEnabledButtonNext(Z)V
    .locals 2

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->btnNext:Landroid/widget/Button;

    if-nez v0, :cond_0

    const-string v1, "btnNext"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getBtnNext()Landroid/widget/Button;
    .locals 2

    .line 20
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->btnNext:Landroid/widget/Button;

    if-nez v0, :cond_0

    const-string v1, "btnNext"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getToolbar()Landroid/support/v7/widget/Toolbar;
    .locals 2

    .line 21
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    const-string v1, "toolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 24
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0059

    .line 25
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->setContentView(I)V

    const v0, 0x7f09008a

    .line 27
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.widget.Button"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->btnNext:Landroid/widget/Button;

    const v0, 0x7f0903d8

    .line 28
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.support.v7.widget.Toolbar"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    .line 30
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_2

    const-string v1, "toolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 31
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 32
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 33
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled$1385ff()V

    .line 36
    :cond_5
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->CONTACT_EXTRA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.model.contact.Contact"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    check-cast v0, Lru/rocketbank/core/model/contact/Contact;

    if-nez p1, :cond_7

    .line 39
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x7f090401

    .line 40
    sget-object v2, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;->Companion:Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$Companion;

    invoke-virtual {v2, v0}, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment$Companion;->newInstance(Lru/rocketbank/core/model/contact/Contact;)Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    const-class v2, Lru/rocketbank/r2d2/friends/TransferFriendAmountFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 41
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 44
    :cond_7
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->btnNext:Landroid/widget/Button;

    if-nez p1, :cond_8

    const-string v0, "btnNext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    new-instance v0, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity$onCreate$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity$onCreate$1;-><init>(Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;)V

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onEventMainThread(Lru/rocketbank/core/events/NextButtonEvent;)V
    .locals 1

    const-string v0, "nextButtonEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lru/rocketbank/core/events/NextButtonEvent;->isEnable()Z

    move-result p1

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->setEnabledButtonNext(Z)V

    return-void
.end method

.method public final setBtnNext(Landroid/widget/Button;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->btnNext:Landroid/widget/Button;

    return-void
.end method

.method public final setToolbar(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/SendMoneyToContactActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-void
.end method
