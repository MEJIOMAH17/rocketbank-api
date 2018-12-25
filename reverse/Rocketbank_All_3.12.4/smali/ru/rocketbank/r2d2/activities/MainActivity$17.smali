.class Lru/rocketbank/r2d2/activities/MainActivity$17;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/MainActivity;->createMoneyMenu(Lru/rocketbank/core/model/UserModel;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/MainActivity;

.field final synthetic val$safe:Lru/rocketbank/core/model/SafeAccount;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/MainActivity;Lru/rocketbank/core/model/SafeAccount;)V
    .locals 0

    .line 1272
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$17;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/activities/MainActivity$17;->val$safe:Lru/rocketbank/core/model/SafeAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z
    .locals 0

    .line 1275
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$17;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    iget-object p2, p0, Lru/rocketbank/r2d2/activities/MainActivity$17;->val$safe:Lru/rocketbank/core/model/SafeAccount;

    invoke-virtual {p2}, Lru/rocketbank/core/model/SafeAccount;->getToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/activities/MainActivity;->showSafe(Ljava/lang/String;)V

    .line 1276
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$17;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/MainActivity;->access$1200(Lru/rocketbank/r2d2/activities/MainActivity;)Lcom/mikepenz/materialdrawer/Drawer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/Drawer;->closeDrawer()V

    const/4 p1, 0x1

    return p1
.end method
