.class public final Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$runTimer$1;
.super Landroid/os/CountDownTimer;
.source "Sec3dPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->runTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSec3dPresenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Sec3dPresenter.kt\nru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$runTimer$1\n*L\n1#1,100:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $timeLeft:J

.field final synthetic this$0:Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;JJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ)V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$runTimer$1;->this$0:Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;

    iput-wide p2, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$runTimer$1;->$timeLeft:J

    invoke-direct {p0, p4, p5, p6, p7}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    .line 85
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$runTimer$1;->this$0:Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->access$getView$p(Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;)Lru/rocketbank/r2d2/activities/webauth/Sec3dView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dView;->onTimeOut()V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$runTimer$1;->cancel()V

    return-void
.end method

.method public final onTick(J)V
    .locals 1

    .line 90
    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$runTimer$1;->this$0:Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->access$getCalendar$p(Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;)Ljava/util/Calendar;

    move-result-object v0

    .line 91
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string p1, "calendar.apply {\n       \u2026hed\n                    }"

    .line 90
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 93
    iget-object p2, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$runTimer$1;->this$0:Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;

    invoke-static {p2}, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->access$getView$p(Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;)Lru/rocketbank/r2d2/activities/webauth/Sec3dView;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter$runTimer$1;->this$0:Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;

    invoke-static {v0}, Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;->access$getFormat$p(Lru/rocketbank/r2d2/activities/webauth/Sec3dPresenter;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "format.format(time)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lru/rocketbank/r2d2/activities/webauth/Sec3dView;->updateTime(Ljava/lang/String;)V

    return-void

    :cond_0
    return-void
.end method
