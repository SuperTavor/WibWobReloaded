.class Lcom/hangame/hsp/cgp/core/CGPService$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/cgp/core/CGPService;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/cgp/core/CGPService;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/cgp/core/CGPService$6;->this$0:Lcom/hangame/hsp/cgp/core/CGPService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method