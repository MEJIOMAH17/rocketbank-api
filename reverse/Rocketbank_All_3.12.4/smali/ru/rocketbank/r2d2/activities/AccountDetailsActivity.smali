.class public final Lru/rocketbank/r2d2/activities/AccountDetailsActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "AccountDetailsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/activities/AccountDetailsActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountDetailsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountDetailsActivity.kt\nru/rocketbank/r2d2/activities/AccountDetailsActivity\n*L\n1#1,42:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/activities/AccountDetailsActivity$Companion;

.field private static final EXTRA_TOKEN:Ljava/lang/String; = "TOKEN"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/activities/AccountDetailsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/activities/AccountDetailsActivity$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/activities/AccountDetailsActivity;->Companion:Lru/rocketbank/r2d2/activities/AccountDetailsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getEXTRA_TOKEN$cp()Ljava/lang/String;
    .locals 1

    .line 10
    sget-object v0, Lru/rocketbank/r2d2/activities/AccountDetailsActivity;->EXTRA_TOKEN:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AccountDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AccountDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AccountDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/AccountDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/AccountDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/AccountDetailsActivity;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 12
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c001f

    .line 13
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/AccountDetailsActivity;->setContentView(I)V

    .line 15
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AccountDetailsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    if-nez p1, :cond_3

    .line 18
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AccountDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lru/rocketbank/r2d2/activities/AccountDetailsActivity;->EXTRA_TOKEN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 21
    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/AccountDetailsStandaloneFragment;->newInstance(Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/AccountDetailsStandaloneFragment;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    invoke-static {}, Lru/rocketbank/r2d2/fragments/AccountDetailsStandaloneFragment;->newInstance()Lru/rocketbank/r2d2/fragments/AccountDetailsStandaloneFragment;

    move-result-object p1

    .line 23
    :cond_2
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/AccountDetailsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090103

    .line 24
    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_3
    return-void
.end method
