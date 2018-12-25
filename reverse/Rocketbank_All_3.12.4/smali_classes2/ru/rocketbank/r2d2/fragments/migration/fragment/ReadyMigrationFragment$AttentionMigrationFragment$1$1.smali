.class Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment$1$1;
.super Ljava/lang/Object;
.source "ReadyMigrationFragment.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment$1;->call(Lru/rocketbank/core/model/PrivacyResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment$1;

.field final synthetic val$activity:Lru/rocketbank/r2d2/activities/AbstractActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment$1;Lru/rocketbank/r2d2/activities/AbstractActivity;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment$1$1;->this$1:Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment$1;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment$1$1;->val$activity:Lru/rocketbank/r2d2/activities/AbstractActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .line 218
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/migration/fragment/ReadyMigrationFragment$AttentionMigrationFragment$1$1;->val$activity:Lru/rocketbank/r2d2/activities/AbstractActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/AbstractActivity;->hideProgressDialog()V

    return-void
.end method
