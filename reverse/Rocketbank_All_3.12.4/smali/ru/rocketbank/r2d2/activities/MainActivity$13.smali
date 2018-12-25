.class Lru/rocketbank/r2d2/activities/MainActivity$13;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/MainActivity;->configureMainMenu(Lru/rocketbank/core/model/UserModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/MainActivity;

.field final synthetic val$userModel:Lru/rocketbank/core/model/UserModel;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/MainActivity;Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 1046
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$13;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/activities/MainActivity$13;->val$userModel:Lru/rocketbank/core/model/UserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1049
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$13;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity$13;->val$userModel:Lru/rocketbank/core/model/UserModel;

    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel;->getRates()Lru/rocketbank/core/model/UserModel$Rates;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/UserModel$Rates;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/Utils;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
