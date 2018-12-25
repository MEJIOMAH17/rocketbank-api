.class Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment$1;
.super Ljava/lang/Object;
.source "CardReadyMigrationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 37
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment$1;->this$0:Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/fragments/migration/fragment/CardReadyMigrationFragment;->onButtonClicked()V

    return-void
.end method
