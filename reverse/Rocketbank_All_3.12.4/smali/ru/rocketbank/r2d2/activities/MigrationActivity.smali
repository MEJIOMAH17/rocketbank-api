.class public Lru/rocketbank/r2d2/activities/MigrationActivity;
.super Lru/rocketbank/r2d2/activities/SecuredActivity;
.source "MigrationActivity.java"


# static fields
.field public static DEMO:Z = false

.field public static final KEY_MIGRATION:Ljava/lang/String; = "KEY_MIGRATION"

.field public static final KEY_MIGRATION_URLS:Ljava/lang/String; = "KEY_MIGRATION_URLS"


# instance fields
.field private migrationURLs:Lru/rocketbank/core/model/migration/MigrationURLs;

.field toolbar:Landroid/support/v7/widget/Toolbar;

.field toolbarShadow:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lru/rocketbank/r2d2/activities/SecuredActivity;-><init>()V

    return-void
.end method

.method private chooseFragment(Lru/rocketbank/core/model/migration/Migration;)Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;
    .locals 3

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    sget-object v1, Lru/rocketbank/r2d2/activities/MigrationActivity$1;->$SwitchMap$ru$rocketbank$core$model$migration$Migration$Status:[I

    invoke-virtual {p1}, Lru/rocketbank/core/model/migration/Migration;->getStatus()Lru/rocketbank/core/model/migration/Migration$Status;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/core/model/migration/Migration$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 148
    new-instance v1, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/PendingMigrationFragment;-><init>()V

    goto :goto_0

    .line 144
    :pswitch_0
    new-instance v1, Lru/rocketbank/r2d2/fragments/migration/fragment/CompletedMigrationFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/CompletedMigrationFragment;-><init>()V

    goto :goto_0

    .line 141
    :pswitch_1
    new-instance v1, Lru/rocketbank/r2d2/fragments/migration/fragment/ActivatedMigrationFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/ActivatedMigrationFragment;-><init>()V

    goto :goto_0

    .line 138
    :pswitch_2
    new-instance v1, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment;-><init>()V

    goto :goto_0

    .line 135
    :pswitch_3
    new-instance v1, Lru/rocketbank/r2d2/fragments/migration/fragment/CheckingMigrationFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/CheckingMigrationFragment;-><init>()V

    goto :goto_0

    .line 130
    :pswitch_4
    new-instance v1, Lru/rocketbank/r2d2/fragments/migration/fragment/DeliveringMigrationFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/DeliveringMigrationFragment;-><init>()V

    goto :goto_0

    .line 125
    :pswitch_5
    new-instance v1, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;-><init>()V

    goto :goto_0

    .line 122
    :pswitch_6
    new-instance v1, Lru/rocketbank/r2d2/fragments/migration/fragment/IssuingMigrationFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/IssuingMigrationFragment;-><init>()V

    goto :goto_0

    .line 119
    :pswitch_7
    new-instance v1, Lru/rocketbank/r2d2/fragments/migration/fragment/NeedsSelfieMigrationFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/NeedsSelfieMigrationFragment;-><init>()V

    goto :goto_0

    .line 116
    :pswitch_8
    new-instance v1, Lru/rocketbank/r2d2/fragments/migration/fragment/NeedsRegistrationMigrationFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/NeedsRegistrationMigrationFragment;-><init>()V

    goto :goto_0

    .line 113
    :pswitch_9
    new-instance v1, Lru/rocketbank/r2d2/fragments/migration/fragment/NeedsPassportMigrationFragment;

    invoke-direct {v1}, Lru/rocketbank/r2d2/fragments/migration/fragment/NeedsPassportMigrationFragment;-><init>()V

    :goto_0
    const-string v2, "KEY_MIGRATION"

    .line 151
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "KEY_MIGRATION_URLS"

    .line 152
    iget-object v2, p0, Lru/rocketbank/r2d2/activities/MigrationActivity;->migrationURLs:Lru/rocketbank/core/model/migration/MigrationURLs;

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 153
    invoke-virtual {v1, v0}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private replaceFragment(Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;)V
    .locals 3

    .line 80
    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/MigrationActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f11046d

    .line 84
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/MigrationActivity;->setTitle(I)V

    .line 86
    :goto_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MigrationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010012

    const v2, 0x7f010013

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f090105

    .line 89
    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static startActivity(Lru/rocketbank/core/model/migration/Migration;Lru/rocketbank/core/model/migration/MigrationURLs;Landroid/content/Context;)V
    .locals 2

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lru/rocketbank/r2d2/activities/MigrationActivity;

    invoke-direct {v0, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "KEY_MIGRATION"

    .line 42
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "KEY_MIGRATION_URLS"

    .line 43
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    .line 41
    invoke-virtual {p2, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 48
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/activities/SecuredActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0045

    .line 49
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/MigrationActivity;->setContentView(I)V

    const v0, 0x7f0903d8

    .line 51
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/MigrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MigrationActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    const v0, 0x7f0903dc

    .line 52
    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/MigrationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MigrationActivity;->toolbarShadow:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MigrationActivity;->toolbarShadow:Landroid/view/View;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MigrationActivity;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/activities/MigrationActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 57
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MigrationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MigrationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 59
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MigrationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled$1385ff()V

    .line 61
    :cond_1
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MigrationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_MIGRATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/migration/Migration;

    .line 62
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MigrationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "KEY_MIGRATION_URLS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/model/migration/MigrationURLs;

    iput-object v1, p0, Lru/rocketbank/r2d2/activities/MigrationActivity;->migrationURLs:Lru/rocketbank/core/model/migration/MigrationURLs;

    if-nez p1, :cond_2

    .line 64
    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/activities/MigrationActivity;->chooseFragment(Lru/rocketbank/core/model/migration/Migration;)Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;

    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/MigrationActivity;->replaceFragment(Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;)V

    return-void

    .line 67
    :cond_2
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/MigrationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f090105

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 69
    check-cast p1, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;->getTitle()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 71
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/MigrationActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    const p1, 0x7f11046d

    .line 73
    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/activities/MigrationActivity;->setTitle(I)V

    :cond_4
    return-void
.end method

.method public onEventMainThread(Lru/rocketbank/core/model/migration/Migration;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/MigrationActivity;->chooseFragment(Lru/rocketbank/core/model/migration/Migration;)Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;

    move-result-object p1

    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/activities/MigrationActivity;->replaceFragment(Lru/rocketbank/r2d2/fragments/migration/fragment/MigrationFragment;)V

    return-void
.end method
