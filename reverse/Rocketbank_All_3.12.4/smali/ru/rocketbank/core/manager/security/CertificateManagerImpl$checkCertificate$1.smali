.class final Lru/rocketbank/core/manager/security/CertificateManagerImpl$checkCertificate$1;
.super Ljava/lang/Object;
.source "CertificateManagerImpl.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/security/CertificateManagerImpl;->checkCertificate(Landroid/net/http/SslCertificate;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;",
        "Lrx/Observable<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $certificate:Landroid/net/http/SslCertificate;

.field final synthetic this$0:Lru/rocketbank/core/manager/security/CertificateManagerImpl;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/security/CertificateManagerImpl;Landroid/net/http/SslCertificate;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl$checkCertificate$1;->this$0:Lru/rocketbank/core/manager/security/CertificateManagerImpl;

    iput-object p2, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl$checkCertificate$1;->$certificate:Landroid/net/http/SslCertificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1123
    iget-object p1, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl$checkCertificate$1;->this$0:Lru/rocketbank/core/manager/security/CertificateManagerImpl;

    iget-object v0, p0, Lru/rocketbank/core/manager/security/CertificateManagerImpl$checkCertificate$1;->$certificate:Landroid/net/http/SslCertificate;

    invoke-static {p1, v0}, Lru/rocketbank/core/manager/security/CertificateManagerImpl;->access$getCheckObservable(Lru/rocketbank/core/manager/security/CertificateManagerImpl;Landroid/net/http/SslCertificate;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
