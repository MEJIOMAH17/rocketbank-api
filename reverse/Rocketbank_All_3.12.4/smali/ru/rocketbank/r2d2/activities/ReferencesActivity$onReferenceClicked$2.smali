.class final Lru/rocketbank/r2d2/activities/ReferencesActivity$onReferenceClicked$2;
.super Ljava/lang/Object;
.source "ReferencesActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/ReferencesActivity;->onReferenceClicked(Landroid/view/View;Lru/rocketbank/core/model/references/Reference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lru/rocketbank/r2d2/activities/ReferencesActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/ReferencesActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity$onReferenceClicked$2;->this$0:Lru/rocketbank/r2d2/activities/ReferencesActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity$onReferenceClicked$2;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 103
    sget-object p1, Lru/rocketbank/r2d2/activities/DownloadActivity;->Companion:Lru/rocketbank/r2d2/activities/DownloadActivity$Companion;

    iget-object p2, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity$onReferenceClicked$2;->$context:Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity$onReferenceClicked$2;->this$0:Lru/rocketbank/r2d2/activities/ReferencesActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/ReferencesActivity;->access$getToken$p(Lru/rocketbank/r2d2/activities/ReferencesActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/activities/ReferencesActivity$onReferenceClicked$2;->this$0:Lru/rocketbank/r2d2/activities/ReferencesActivity;

    invoke-static {v1}, Lru/rocketbank/r2d2/activities/ReferencesActivity;->access$getLastRef(Lru/rocketbank/r2d2/activities/ReferencesActivity;)Lru/rocketbank/core/model/references/Reference;

    move-result-object v1

    invoke-virtual {v1}, Lru/rocketbank/core/model/references/Reference;->getKind()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1, p2, v0, v1}, Lru/rocketbank/r2d2/activities/DownloadActivity$Companion;->startDownloadReference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
