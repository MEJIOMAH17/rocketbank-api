.class public final Landroid/support/customtabs/CustomTabsSessionToken;
.super Ljava/lang/Object;
.source "CustomTabsSessionToken.java"


# instance fields
.field private final mCallback$875e033:Landroid/support/compat/R$dimen;

.field private final mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;


# direct methods
.method constructor <init>(Landroid/support/customtabs/ICustomTabsCallback;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    .line 51
    new-instance p1, Landroid/support/customtabs/CustomTabsSessionToken$1;

    invoke-direct {p1, p0}, Landroid/support/customtabs/CustomTabsSessionToken$1;-><init>(Landroid/support/customtabs/CustomTabsSessionToken;)V

    iput-object p1, p0, Landroid/support/customtabs/CustomTabsSessionToken;->mCallback$875e033:Landroid/support/compat/R$dimen;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 75
    instance-of v0, p1, Landroid/support/customtabs/CustomTabsSessionToken;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 76
    :cond_0
    check-cast p1, Landroid/support/customtabs/CustomTabsSessionToken;

    .line 2065
    iget-object p1, p1, Landroid/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {p1}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 77
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final getCallbackBinder()Landroid/os/IBinder;
    .locals 1

    .line 65
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1065
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsSessionToken;->mCallbackBinder:Landroid/support/customtabs/ICustomTabsCallback;

    invoke-interface {v0}, Landroid/support/customtabs/ICustomTabsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
