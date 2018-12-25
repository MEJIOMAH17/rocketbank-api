.class final Lcom/crashlytics/android/answers/DisabledSessionAnalyticsManagerStrategy;
.super Ljava/lang/Object;
.source "DisabledSessionAnalyticsManagerStrategy.java"

# interfaces
.implements Lcom/crashlytics/android/answers/SessionAnalyticsManagerStrategy;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancelTimeBasedFileRollOver()V
    .locals 0

    return-void
.end method

.method public final deleteAllEvents()V
    .locals 0

    return-void
.end method

.method public final processEvent(Lcom/crashlytics/android/answers/SessionEvent$Builder;)V
    .locals 0

    return-void
.end method

.method public final rollFileOver()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final sendEvents()V
    .locals 0

    return-void
.end method

.method public final setAnalyticsSettingsData$61d868c(Landroid/support/v7/recyclerview/R$dimen;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
