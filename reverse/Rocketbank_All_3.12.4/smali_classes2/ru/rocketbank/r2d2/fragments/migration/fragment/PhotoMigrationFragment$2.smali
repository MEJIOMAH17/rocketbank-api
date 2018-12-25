.class Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment$2;
.super Ljava/lang/Object;
.source "PhotoMigrationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->setPhotoIsNeeded()V
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

    .line 148
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment$2;->this$0:Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/PhotoMigrationFragment;->onTakePhotoClick(Landroid/view/View;)V

    return-void
.end method
