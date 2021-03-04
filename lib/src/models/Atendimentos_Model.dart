class Projeto {
  String empresa;
  String etapa;
  String numeroAtendimento;
  String solucao;
  int id;

  Projeto(
      {this.empresa,
      this.etapa,
      this.numeroAtendimento,
      this.solucao,
      this.id});

  Projeto.fromJson(Map<String, dynamic> json) {
    empresa = json['Empresa'];
    etapa = json['Etapa'];
    numeroAtendimento = json['NumeroAtendimento'];
    solucao = json['Solucao'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Empresa'] = this.empresa;
    data['Etapa'] = this.etapa;
    data['NumeroAtendimento'] = this.numeroAtendimento;
    data['Solucao'] = this.solucao;
    data['id'] = this.id;
    return data;
  }
}
