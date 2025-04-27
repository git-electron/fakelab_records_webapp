import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/gen/assets.gen.dart';
import 'equipment_tile.dart';

class EquipmentList extends StatelessWidget {
  const EquipmentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const Pad(right: 30),
      child: Column(
        children: [
          EquipmentTile(
            title: 'Союз 023 bomblet',
            description:
                'Тёплое аналоговое звучание с винтажным характером, идеально для вокала. Кастомный трансформатор придаёт звуку особенный тембр, окраску и глубину',
            icon: Assets.icons.equipment.mic,
          ),
          EquipmentTile(
            title: 'Mackie big knob studio',
            description:
                'Аудиоинтерфейс и мониторный контроллер в одном: чистый звук, удобное управление и максимум контроля на студии',
            icon: Assets.icons.equipment.interface,
          ),
          EquipmentTile(
            title: 'Beyerdynamic DT 770/990 pro',
            description:
                'Высококлассное звучание и комфорт при длительной работе. 770 — закрытые для записи, 990 — открытые для микса с широкой стереосценой',
            icon: Assets.icons.equipment.headphones,
          ),
          EquipmentTile(
            title: 'KRK Rokit 5 G4',
            description:
                'Мощный звук и точная передача частот. Идеальны для сведения и продюсирования в студийных условиях',
            icon: Assets.icons.equipment.monitors,
          ),
          EquipmentTile(
            title: 'Fender Squier bullet stratocaster',
            description:
                'Классическое звучание Fender, лёгкая и универсальная гитара для записи ритма и соло',
            icon: Assets.icons.equipment.guitar,
          ),
          EquipmentTile(
            title: 'Arturia keylab essential 88 MKIII',
            description:
                'Полувзвешенные клавиши, глубокая интеграция с DAW и софтом. Полный контроль и вдохновение под рукой',
            icon: Assets.icons.equipment.midi,
          ),
        ],
      ),
    );
  }
}
