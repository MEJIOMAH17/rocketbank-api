.class final Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;
.super Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;
.source "AppsFlyerLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallAttributionIdFetcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/AppsFlyerLib;


# direct methods
.method public constructor <init>(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 1839
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;->this$0:Lcom/appsflyer/AppsFlyerLib;

    .line 1840
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/appsflyer/AppsFlyerLib$AttributionIdFetcher;-><init>(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method


# virtual methods
.method protected final attributionCallback(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1849
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$800$3183cb03()Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onInstallConversionDataLoaded(Ljava/util/Map;)V

    .line 1850
    iget-object p1, p0, Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string v0, "appsflyer-data"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 1851
    iget-object p1, p0, Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string v0, "appsflyerConversionDataRequestRetries"

    invoke-static {p1, v0, v1}, Lcom/appsflyer/AppsFlyerLib;->access$1000$742740cf(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method protected final attributionCallbackFailure$505cff1c(I)V
    .locals 2

    .line 1855
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->access$800$3183cb03()Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    const/16 v0, 0x190

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_0

    .line 1858
    iget-object p1, p0, Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string v0, "appsflyer-data"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "appsflyerConversionDataRequestRetries"

    .line 1859
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 1860
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$InstallAttributionIdFetcher;->ctxReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "appsflyerConversionDataRequestRetries"

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, v1, p1}, Lcom/appsflyer/AppsFlyerLib;->access$1000$742740cf(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "https://api.appsflyer.com/install_data/v3/"

    return-object v0
.end method
