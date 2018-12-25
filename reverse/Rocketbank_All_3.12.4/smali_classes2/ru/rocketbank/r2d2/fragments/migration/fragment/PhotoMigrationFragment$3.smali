.class Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment$3;
.super Ljava/lang/Object;
.source "PhotoMigrationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->setPhotoIsReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment$3;->this$0:Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->onNextButtonClick(Landroid/view/View;)V

    return-void
.end method
