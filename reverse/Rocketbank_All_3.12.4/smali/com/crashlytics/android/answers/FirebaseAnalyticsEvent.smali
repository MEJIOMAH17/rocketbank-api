.class public final Lcom/crashlytics/android/answers/FirebaseAnalyticsEvent;
.super Ljava/lang/Object;
.source "FirebaseAnalyticsEvent.java"


# instance fields
.field private final eventName:Ljava/lang/String;

.field private final eventParams:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/crashlytics/android/answers/FirebaseAnalyticsEvent;->eventName:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/crashlytics/android/answers/FirebaseAnalyticsEvent;->eventParams:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final getEventName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/crashlytics/android/answers/FirebaseAnalyticsEvent;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventParams()Landroid/os/Bundle;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/crashlytics/android/answers/FirebaseAnalyticsEvent;->eventParams:Landroid/os/Bundle;

    return-object v0
.end method
