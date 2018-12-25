.class Lru/rocketbank/r2d2/activities/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;


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


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/MainActivity;)V
    .locals 0

    .line 1073
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$14;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z
    .locals 0

    .line 1076
    move-object p1, p3

    check-cast p1, Lru/rocketbank/r2d2/widgets/RocketDrawer;

    invoke-interface {p1}, Lru/rocketbank/r2d2/widgets/RocketDrawer;->getOnDrawerItemClickListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    return p2

    .line 1080
    :cond_0
    :try_start_0
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$14;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    check-cast p3, Lru/rocketbank/r2d2/widgets/RocketDrawer;

    invoke-static {p1, p3}, Lru/rocketbank/r2d2/activities/MainActivity;->access$1300(Lru/rocketbank/r2d2/activities/MainActivity;Lru/rocketbank/r2d2/widgets/RocketDrawer;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 1083
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 1084
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$14;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/MainActivity;->showFeed()V

    return p2
.end method
