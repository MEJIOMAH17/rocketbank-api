.class final Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$onCreateView$$inlined$with$lambda$1;
.super Ljava/lang/Object;
.source "AnalyticsFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $savedInstanceState$inlined:Landroid/os/Bundle;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$onCreateView$$inlined$with$lambda$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$onCreateView$$inlined$with$lambda$1;->$savedInstanceState$inlined:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 60
    iget-object p1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$onCreateView$$inlined$with$lambda$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$onCreateView$$inlined$with$lambda$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->access$isJointAnalytics$p(Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment$onCreateView$$inlined$with$lambda$1;->this$0:Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->getJointIds$App_prodRelease()[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/r2d2/root/analytics/AnalyticsFragment;->onChangeAnalytics(Z[I)V

    return-void
.end method
